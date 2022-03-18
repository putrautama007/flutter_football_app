import 'package:injectable/injectable.dart';
import 'injection.config.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() => $initGetIt(getIt);