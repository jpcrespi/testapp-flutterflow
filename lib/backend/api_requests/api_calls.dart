import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FirebaseAuthLoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "returnSecureToken": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Firebase Auth Login',
      apiUrl:
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCBc71XKfqcjvUk5uKi4pSL86I8UQaLwOA',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic idToken(dynamic response) => getJsonField(
        response,
        r'''$["idToken"]''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$["email"]''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$["error"]["message"]''',
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
