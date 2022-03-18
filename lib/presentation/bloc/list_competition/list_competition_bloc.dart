import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_football_app/domain/usecase/get_list_competition_usecase.dart';
import 'package:flutter_football_app/presentation/bloc/list_competition/list_competition_event.dart';
import 'package:flutter_football_app/presentation/bloc/list_competition/list_competition_state.dart';
import 'package:flutter_football_app/utils/usecase/usecase.dart';

class ListCompetitionBloc
    extends Bloc<ListCompetitionEvent, ListCompetitionState> {
  final GetListCompetitionUseCase getListCompetitionUseCase;

  ListCompetitionBloc({
    required this.getListCompetitionUseCase,
  }) : super(ListCompetitionInitial()) {
    on<FetchListCompetitionData>(
      (_, emit) async {
        emit(ListCompetitionLoading());
        final result = await getListCompetitionUseCase.call(const NoParams());

        result.fold(
          (failure) => emit(
            ListCompetitionError(
              failure.toString(),
            ),
          ),
          (result) {
            if (result != null) {
              emit(
                ListCompetitionHasData(
                  result,
                ),
              );
            } else {
              emit(
                ListCompetitionEmpty(),
              );
            }
          },
        );
      },
    );
  }
}
