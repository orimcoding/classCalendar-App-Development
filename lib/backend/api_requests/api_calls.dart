import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'classCalendarPrivateApiCall';

class FetchCoursesCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'FetchCoursesCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic coursesList(dynamic response) => getJsonField(
        response,
        r'''$["courses"]''',
      );
  static dynamic courseId(dynamic response) => getJsonField(
        response,
        r'''$["courses"][0]["id"]''',
      );
  static dynamic courseName(dynamic response) => getJsonField(
        response,
        r'''$["courses"][0]["name"]''',
      );
  static dynamic courseSection(dynamic response) => getJsonField(
        response,
        r'''$["courses"][0]["section"]''',
      );
}

class FetchAssignmentsCall {
  static Future<ApiCallResponse> call({
    String? courseId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'FetchAssignmentsCall',
        'variables': {
          'courseId': courseId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic assignmentsList(dynamic response) => getJsonField(
        response,
        r'''$["courseWork"]''',
      );
  static dynamic assignmentsId(dynamic response) => getJsonField(
        response,
        r'''$["courseWork"][0]["id"]''',
      );
  static dynamic assignmentsTitle(dynamic response) => getJsonField(
        response,
        r'''$["courseWork"][0]["title"]''',
      );
  static dynamic dueDateYear(dynamic response) => getJsonField(
        response,
        r'''$["courseWork"][0]["dueDate"]["year"]''',
      );
  static dynamic dueDateMonth(dynamic response) => getJsonField(
        response,
        r'''$["courseWork"][0]["dueDate"]["month"]''',
      );
  static dynamic dueDateDay(dynamic response) => getJsonField(
        response,
        r'''$["courseWork"][0]["dueDate"]["day"]''',
      );
  static dynamic assignmentState(dynamic response) => getJsonField(
        response,
        r'''$["courseWork"][0]["state"]''',
      );
}

class FetchIncompleteSubmissionsCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'FetchIncompleteSubmissionsCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic submissionsList(dynamic response) => getJsonField(
        response,
        r'''$["studentSubmissions"]''',
      );
  static dynamic submissionId(dynamic response) => getJsonField(
        response,
        r'''$["studentSubmissions"][0]["id"]''',
      );
  static dynamic submissionState(dynamic response) => getJsonField(
        response,
        r'''$["studentSubmissions"][0]["state"]''',
      );
  static dynamic isLate(dynamic response) => getJsonField(
        response,
        r'''$["studentSubmissions"][0]["late"]''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
