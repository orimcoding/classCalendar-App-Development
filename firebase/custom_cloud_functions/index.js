const admin = require("firebase-admin/app");
admin.initializeApp();

const scheduleTaskNotification = require("./schedule_task_notification.js");
exports.scheduleTaskNotification =
  scheduleTaskNotification.scheduleTaskNotification;
const retrieveGoogleAccessToken = require("./retrieve_google_access_token.js");
exports.retrieveGoogleAccessToken =
  retrieveGoogleAccessToken.retrieveGoogleAccessToken;
const retrieveGoogleAccessTokenHttp = require("./retrieve_google_access_token_http.js");
exports.retrieveGoogleAccessTokenHttp =
  retrieveGoogleAccessTokenHttp.retrieveGoogleAccessTokenHttp;
