const { onCall } = require("firebase-functions/v2/https");
const admin = require("firebase-admin");

exports.ffFetchGoogleAccessToken = onCall(async (request) => {
  try {
    console.log("Fetching Google Access Token...");

    // Must be authenticated
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
    console.error("Error fetching Google Access Token:", error.message);
    throw new Error("Failed to retrieve Google access token.");
  }
});
