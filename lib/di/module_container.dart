import 'package:dio/dio.dart';
import 'package:flutter_football_app/data/datasource/remote/football_service.dart';
import 'package:flutter_football_app/utils/network/api_helper.dart';
import 'package:flutter_football_app/utils/network/api_helper_impl.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

class ModuleContainer {
  static Injector injector = Injector();

  void initialise() {
    injector.map<Dio>((_) => Dio(), isSingleton: true);
    injector.map<ApiHelper>(
        (injector) => ApiHelperImpl(
              dio: injector.get<Dio>(),
            ),
        isSingleton: true);
    injector.map<FootballService>(
        (injector) => FootballService(
              apiHelper: injector.get<ApiHelper>(),
            ),
        isSingleton: true);
  }
}
