import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_football_app/bloc/list_competition/list_competition_event.dart';
import 'package:flutter_football_app/bloc/list_competition/list_competition_state.dart';
import 'package:flutter_football_app/data/datasource/remote/football_service.dart';

class ListCompetitionBloc
    extends Bloc<ListCompetitionEvent, ListCompetitionState> {
  final FootballService footballService;

  ListCompetitionBloc({
    required this.footballService,
  }) : super(ListCompetitionInitial()) {
    on<FetchListCompetitionData>((_, emit) async {
      try {
        emit(ListCompetitionLoading());
        final result = await footballService.getListCompetition();

        if (result.competitions != null) {
          emit(
            ListCompetitionHasData(
              result.competitions!,
            ),
          );
        } else {
          emit(
            ListCompetitionEmpty(),
          );
        }
      } catch (error) {
        emit(
          ListCompetitionError(
            error.toString(),
          ),
        );
      }
    });
  }
}
