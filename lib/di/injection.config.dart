// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/datasource/remote/football_service.dart' as _i6;
import '../utils/network/api_helper.dart' as _i3;
import '../utils/network/api_helper_impl.dart' as _i4;
import '../utils/network/network_module.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i3.ApiHelper>(() => _i4.ApiHelperImpl());
  gh.lazySingleton<_i5.Dio>(() => networkModule.dio);
  gh.lazySingleton<_i6.FootballService>(
      () => _i6.FootballService(apiHelper: get<_i3.ApiHelper>()));
  return get;
}

class _$NetworkModule extends _i7.NetworkModule {}
