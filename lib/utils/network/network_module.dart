import 'package:dio/dio.dart';
import 'package:flutter_football_app/utils/strings/api_strings.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule{
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: ApiStrings.baseUrl
    ),
  );
}