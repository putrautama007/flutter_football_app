import 'package:equatable/equatable.dart';

class CompetitionEntity extends Equatable {
  const CompetitionEntity({
    required this.id,
    required this.area,
    required this.name,
    required this.code,
    required this.emblemUrl,
    required this.plan,
    required this.numberOfAvailableSeasons,
    required this.lastUpdated,
  });

  final int id;
  final AreaEntity area;
  final String name;
  final String code;
  final String emblemUrl;
  final String plan;
  final int numberOfAvailableSeasons;
  final String lastUpdated;

  @override
  List<Object?> get props => [
        id,
        area,
        name,
        code,
        emblemUrl,
        plan,
        numberOfAvailableSeasons,
        lastUpdated,
      ];
}

class AreaEntity extends Equatable {
  const AreaEntity({
    required this.id,
    required this.name,
    required this.countryCode,
    required this.ensignUrl,
  });

  final int id;
  final String name;
  final String countryCode;
  final String ensignUrl;

  @override
  List<Object?> get props => [
        id,
        name,
        countryCode,
        ensignUrl,
      ];
}
