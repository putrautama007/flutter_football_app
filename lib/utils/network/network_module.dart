import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule{
  @lazySingleton
  Dio get dio => Dio();
}