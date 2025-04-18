import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'classCalendarPrivateApiCall';

class FetchCoursesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'FetchCoursesCall',
        'variables': {
          'authToken': authToken,
        },
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

class GetAccessTokenCall {
  static Future<ApiCallResponse> call({
    String? idToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Access Token',
      apiUrl: 'https://getaccesstokenhttp-veibnge4ka-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${idToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchCourseWorkCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FetchCourseWork',
      apiUrl:
          'https://classroom.googleapis.com/v1/courses/{{courseId}}/courseWork',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchSubmissionsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FetchSubmissions',
      apiUrl:
          'https://classroom.googleapis.com/v1/courses/{{courseId}}/courseWork/{{courseWorkId}}/studentSubmissions',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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
