const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code.

exports.scheduleTaskNotification = functions.firestore
  .document("tasks/{taskId}")
  .onCreate((snapshot, context) => {
    const task = snapshot.data(); // Access document data
    if (!task) {
      console.error("No task data found.");
      return null;
    }

    const startTime = new Date(task.start); // Convert to Date
    const notificationTime = task.notificationTime; // in minutes

    if (!startTime || !notificationTime) {
      console.error("Missing required task fields: start or notificationTime.");
      return null;
    }

    // Calculate notification time
    const notificationTriggerTime = new Date(
      startTime.getTime() - notificationTime * 60000,
    );

    if (notificationTriggerTime <= Date.now()) {
      console.error("Notification time is in the past. Skipping.");
      return null;
    }

    const message = {
      notification: {
        title: "Upcoming Task Reminder",
        body: `Your task "${task.name}" starts in ${notificationTime} minutes!`,
      },
      token: task.userToken, // Ensure FCM token is saved in Firestore
    };

    // Schedule the notification
    const delay = notificationTriggerTime - Date.now();
    setTimeout(() => {
      admin
        .messaging()
        .send(message)
        .then((response) => {
          console.log("Successfully sent notification:", response);
        })
        .catch((error) => {
          console.error("Error sending notification:", error);
        });
    }, delay);

    return null;
  });
