const functions = require("firebase-functions");
const admin = require("firebase-admin");
const cors = require("cors")({ origin: true });
// To avoid deployment errors, do not call admin.initializeApp() in your code.

exports.retrieveGoogleAccessTokenHttp = functions.https.onRequest(
  (req, res) => {
    cors(req, res, async () => {
      if (req.method !== "POST") {
        return res
          .status(400)
          .send({ error: "Invalid request method. Use POST." });
      }

      try {
        const authHeader = req.headers.authorization;

        if (!authHeader || !authHeader.startsWith("Bearer ")) {
          return res
            .status(401)
            .send({ error: "Unauthorized request. Missing token." });
        }

        const idToken = authHeader.split("Bearer ")[1];
        const decodedToken = await admin.auth().verifyIdToken(idToken);

        const user = await admin.auth().getUser(decodedToken.uid);
        const googleAccessToken = user.customClaims?.googleAccessToken;

        if (!googleAccessToken) {
          return res
            .status(404)
            .send({ error: "Google Classroom access token not found." });
        }

        res.status(200).send({ token: googleAccessToken });
      } catch (error) {
        console.error("Error in retrieveGoogleAccessTokenHttp:", error.message);
        res.status(500).send({ error: "Internal Server Error" });
      }
    });
  },
);
