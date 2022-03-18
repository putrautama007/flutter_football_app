import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_football_app/bloc/list_competition/list_competition_bloc.dart';
import 'package:flutter_football_app/bloc/list_competition/list_competition_event.dart';
import 'package:flutter_football_app/data/datasource/remote/football_service.dart';
import 'package:flutter_football_app/di/module_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/list_competition_screen.dart';

void main() {
  ModuleContainer().initialise();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ListCompetitionBloc(
              footballService: ModuleContainer.injector.get<FootballService>(),
            )..add(FetchListCompetitionData()),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ListCompetitionScreen(),
        ),
      ),
    );
  }
}
