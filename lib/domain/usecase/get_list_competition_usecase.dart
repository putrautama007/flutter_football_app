import 'package:dartz/dartz.dart';
import 'package:flutter_football_app/domain/entity/competition_entity.dart';
import 'package:flutter_football_app/domain/repository/football_repository.dart';
import 'package:flutter_football_app/utils/failure/failure.dart';
import 'package:flutter_football_app/utils/usecase/usecase.dart';

class GetListCompetitionUseCase
    extends UseCase<List<CompetitionEntity>?, NoParams> {
  final FootballRepository footballRepository;

  GetListCompetitionUseCase({
    required this.footballRepository,
  });

  @override
  Future<Either<Failure, List<CompetitionEntity>?>> call(
          NoParams params) async =>
      footballRepository.getListCompetition();
}
