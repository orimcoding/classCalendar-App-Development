const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code.

exports.retrieveGoogleAccessToken = functions.https.onCall(async (request) => {
  try {
    console.log("Incoming Request Auth:", request.auth);

    if (!request.auth) {
      throw new Error(
        "User must be authenticated to retrieve the access token.",
      );
    }

    const user = await admin.auth().getUser(request.auth.uid);
    const googleAccessToken = user.customClaims?.googleAccessToken;

    if (!googleAccessToken) {
      throw new Error(
        "Google Classroom access token not found in custom claims.",
      );
    }

    console.log("Successfully retrieved Google access token.");
    return { token: googleAccessToken };
  } catch (error) {
    console.error("Error in retrieveGoogleAccessToken:", error.message);
    throw new functions.https.HttpsError(
      "failed-precondition",
      "Failed to retrieve Google access token.",
    );
  }
});
