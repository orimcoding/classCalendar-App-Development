const { onRequest } = require("firebase-functions/v2/https");
const { google } = require("googleapis");
const admin = require("firebase-admin");

exports.ffClassroomOAuthCallback = onRequest(async (req, res) => {
  try {
    const CLIENT_ID =
      "58073383530-3dh9lu7abtak6g80f96pvj6edn1i40ma.apps.googleusercontent.com";
    const CLIENT_SECRET = "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";
    const REDIRECT_URL =
      "https://us-central1-class-calendar-applicat-4pbwai.cloudfunctions.net/ffClassroomOAuthCallback";

    const oauth2Client = new google.auth.OAuth2(
      CLIENT_ID,
      CLIENT_SECRET,
      REDIRECT_URL,
    );

    // 'code' from Google
    const code = req.query.code;
    if (!code) {
      return res.status(400).send("Missing 'code' from Google OAuth.");
    }

    // 'uid' from 'state' param
    const uid = req.query.state;
    if (!uid) {
      return res.status(400).send("Missing 'uid' (state param).");
    }

    console.log("OAuth callback for uid:", uid);
    console.log("Exchanging code for tokens...");

    // Exchange code for tokens
    const { tokens } = await oauth2Client.getToken(code);
    console.log("Tokens acquired:", tokens);

    // Store the access_token in the user's custom claims
    await admin.auth().setCustomUserClaims(uid, {
      googleAccessToken: tokens.access_token,
    });

    // Show a success page
    res.status(200).send(`
      <h1>Success!</h1>
      <p>Google Classroom access token stored for UID: ${uid}</p>
      <p>You can close this tab and return to the app.</p>
    `);
  } catch (error) {
    console.error("Error in ffClassroomOAuthCallback:", error.message);
    res.status(500).send("OAuth callback error: " + error.message);
  }
});
