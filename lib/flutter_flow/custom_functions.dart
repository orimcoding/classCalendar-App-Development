import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int daysBetween(
  DateTime from,
  DateTime to,
) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}

String addAtPrefix(String username) {
  if (username.startsWith('@')) {
    return username; // If it already starts with "@", return it as is.
  } else {
    return '@' + username; // Otherwise, add "@" to the start.
  }
}

List<String> createUserList(
  String user1,
  String user2,
) {
  return [user1, user2]; // Combines two user IDs into a list
}

String getFriendUid(
  List<String> users,
  String currentUserUid,
) {
  for (String uid in users) {
    if (uid != currentUserUid) {
      return uid;
    }
  }
  return ""; // Return empty if no friend found
}

String getFriendAvatarUrl(
  List<String> users,
  String currentUserUid,
  String? topType,
  String? accessoriesType,
  String? hairColor,
  String? facialHairType,
  String? clotheType,
  String? eyeType,
  String? eyebrowType,
  String? mouthType,
  String? skinColor,
  String? hatColor,
  String? facialHairColor,
  String? clotheColor,
) {
// Find the friend's UID
  String friendUid = "";
  for (String uid in users) {
    if (uid != currentUserUid) {
      friendUid = uid;
      break;
    }
  }

  // If no friend UID is found, return an empty string
  if (friendUid.isEmpty) {
    return "";
  }

  // Build the full avatar URL
  return "https://avataaars.io/?avatarStyle=Circle"
      "&topType=${topType ?? 'Default'}"
      "&accessoriesType=${accessoriesType ?? 'Default'}"
      "&hairColor=${hairColor ?? 'Default'}"
      "&facialHairType=${facialHairType ?? 'Default'}"
      "&clotheType=${clotheType ?? 'Default'}"
      "&eyeType=${eyeType ?? 'Default'}"
      "&eyebrowType=${eyebrowType ?? 'Default'}"
      "&mouthType=${mouthType ?? 'Default'}"
      "&skinColor=${skinColor ?? 'Default'}"
      "&hatColor=${hatColor ?? 'Default'}"
      "&facialHairColor=${facialHairColor ?? 'Default'}"
      "&clotheColor=${clotheColor ?? 'Default'}";
}

String extractFriendUid(
  List<String> users,
  String currentUserUid,
) {
  for (String uid in users) {
    if (uid != currentUserUid) {
      return uid; // Return the friend's UID
    }
  }
  return ""; // Return an empty string if no friend UID is found
}
