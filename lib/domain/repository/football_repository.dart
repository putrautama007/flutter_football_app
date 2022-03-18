import 'package:dartz/dartz.dart';
import 'package:flutter_football_app/domain/entity/competition_entity.dart';
import 'package:flutter_football_app/utils/failure/failure.dart';

abstract class FootballRepository {
  Future<Either<Failure, List<CompetitionEntity>>> getListCompetition();
}
