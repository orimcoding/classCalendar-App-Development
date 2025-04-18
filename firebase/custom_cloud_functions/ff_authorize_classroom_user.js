const { onRequest } = require("firebase-functions/v2/https");
const { google } = require("googleapis");
const admin = require("firebase-admin");

exports.ffAuthorizeClassroomUser = onRequest((req, res) => {
  // Google OAuth info
  const CLIENT_ID =
    "58073383530-3dh9lu7abtak6g80f96pvj6edn1i40ma.apps.googleusercontent.com";
  const CLIENT_SECRET = "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";

  // The callback must match Google Cloud Console "Authorized redirect URIs"
  const REDIRECT_URL =
    "https://us-central1-class-calendar-applicat-4pbwai.cloudfunctions.net/ffClassroomOAuthCallback";

  // Initialize OAuth2 client
  const oauth2Client = new google.auth.OAuth2(
    CLIENT_ID,
    CLIENT_SECRET,
    REDIRECT_URL,
  );

  // Read-only scopes (edit if you need write-access)
  const SCOPES = [
    "https://www.googleapis.com/auth/classroom.courses.readonly",
    "https://www.googleapis.com/auth/classroom.rosters.readonly",
  ];

  // We'll pass the user's Firebase UID in `state` param
  // so the callback knows which user to set custom claims for
  const authUrl = oauth2Client.generateAuthUrl({
    access_type: "offline",
    prompt: "consent",
    scope: SCOPES,
    state: req.query.uid, // e.g. "?uid=USER_UID"
  });

  console.log("Redirecting to Google OAuth Consent Screen:", authUrl);
  return res.redirect(authUrl);
});
