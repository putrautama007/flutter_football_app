import 'package:dio/dio.dart';
import 'package:flutter_football_app/data/datasource/remote/football_remote_datasource.dart';
import 'package:flutter_football_app/data/mapper/football_data_mapper.dart';
import 'package:flutter_football_app/data/repository/football_repository_impl.dart';
import 'package:flutter_football_app/domain/repository/football_repository.dart';
import 'package:flutter_football_app/domain/usecase/get_list_competition_usecase.dart';
import 'package:flutter_football_app/utils/network/api_helper.dart';
import 'package:flutter_football_app/utils/network/api_helper_impl.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initDependency() {
  _library();
  _service();
  _dataSource();
  _dataMapper();
  _repository();
  _useCase();
}

void _dataSource() => locator.registerLazySingleton<FootballRemoteDataSource>(
      () => FootballRemoteDataSource(
        apiHelper: locator(),
      ),
    );

void _dataMapper() => locator.registerLazySingleton<FootballDataMapper>(
      () => FootballDataMapper(),
    );

void _repository() => locator.registerLazySingleton<FootballRepository>(
      () => FootballRepositoryImpl(
        footballRemoteDataSource: locator(),
        footballDataMapper: locator(),
      ),
    );

void _useCase() => locator.registerLazySingleton<GetListCompetitionUseCase>(
      () => GetListCompetitionUseCase(
        footballRepository: locator(),
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
