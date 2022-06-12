import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class PostListCall {
  static Future<ApiCallResponse> call({
    String category = '',
    int limit,
    String hasPhoto = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'postList',
      apiUrl:
          'https://us-central1-withcenter-test-project.cloudfunctions.net/postList',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
        'limit': limit,
        'hasPhoto': hasPhoto,
      },
      returnBody: true,
    );
  }
}
