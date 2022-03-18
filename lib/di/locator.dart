import 'package:dio/dio.dart';
import 'package:flutter_football_app/data/datasource/remote/football_service.dart';
import 'package:flutter_football_app/utils/network/api_helper.dart';
import 'package:flutter_football_app/utils/network/api_helper_impl.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initDependency() {
  _library();
  _service();
  _dataSource();
}

void _dataSource() => locator.registerLazySingleton<FootballService>(
      () => FootballService(
        apiHelper: locator(),
      ),
    );

void _service() => locator.registerLazySingleton<ApiHelper>(
      () => ApiHelperImpl(
        dio: locator(),
      ),
    );

void _library() => locator.registerLazySingleton<Dio>(
      () => Dio(),
    );
