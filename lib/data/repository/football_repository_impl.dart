import 'package:dartz/dartz.dart';
import 'package:flutter_football_app/data/datasource/remote/football_remote_datasource.dart';
import 'package:flutter_football_app/data/mapper/football_data_mapper.dart';
import 'package:flutter_football_app/domain/entity/competition_entity.dart';
import 'package:flutter_football_app/domain/repository/football_repository.dart';
import 'package:flutter_football_app/utils/failure/exception.dart';
import 'package:flutter_football_app/utils/failure/failure.dart';

class FootballRepositoryImpl implements FootballRepository {
  final FootballRemoteDataSource footballRemoteDataSource;
  final FootballDataMapper footballDataMapper;

  FootballRepositoryImpl({
    required this.footballRemoteDataSource,
    required this.footballDataMapper,
  });

  @override
  Future<Either<Failure, List<CompetitionEntity>>> getListCompetition() async {
    try {
      final result = await footballRemoteDataSource.getListCompetition();
      return Right(
        result.competitions!
            .map(
              (model) => footballDataMapper.mapCompetitionModelToEntity(
                model,
              ),
            )
            .toList(),
      );
    } on ServerException {
      return const Left(ServerFailure(''));
    }
  }
}
