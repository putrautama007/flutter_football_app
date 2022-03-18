import 'package:equatable/equatable.dart';
import 'package:flutter_football_app/domain/entity/competition_entity.dart';

abstract class ListCompetitionState extends Equatable {
  const ListCompetitionState();

  @override
  List<Object> get props => [];
}

class ListCompetitionInitial extends ListCompetitionState {}

class ListCompetitionEmpty extends ListCompetitionState {}

class ListCompetitionLoading extends ListCompetitionState {}

class ListCompetitionError extends ListCompetitionState {
  final String message;

  const ListCompetitionError(this.message);

  @override
  List<Object> get props => [message];
}

class ListCompetitionHasData extends ListCompetitionState {
  final List<CompetitionEntity> result;

  const ListCompetitionHasData(this.result);

  @override
  List<Object> get props => [result];
}