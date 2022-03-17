import 'package:equatable/equatable.dart';

abstract class ListCompetitionEvent extends Equatable {
  const ListCompetitionEvent();
}

class FetchListCompetitionData extends ListCompetitionEvent {
  @override
  List<Object?> get props => [];
}
