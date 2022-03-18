import 'package:dio/dio.dart';
import 'package:flutter_football_app/utils/network/api_helper.dart';
import 'package:flutter_football_app/utils/network/network_module.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ApiHelper)
class ApiHelperImpl extends NetworkModule implements ApiHelper {
  @override
  Future<Map<String, dynamic>> get({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioError catch (e) {
      return e.error;
    }
  }
}
