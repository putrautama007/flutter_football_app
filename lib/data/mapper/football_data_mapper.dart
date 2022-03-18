import 'package:flutter_football_app/data/model/list_competition_model.dart';
import 'package:flutter_football_app/domain/entity/competition_entity.dart';

class FootballDataMapper {
  CompetitionEntity mapCompetitionModelToEntity(Competition? competition) =>
      CompetitionEntity(
        id: competition?.id ?? 0,
        area: _mapAreaModelToEntity(competition?.area),
        name: competition?.name ?? "",
        code: competition?.code ?? "",
        emblemUrl: competition?.emblemUrl ?? "",
        plan: competition?.plan ?? "",
        numberOfAvailableSeasons: competition?.numberOfAvailableSeasons ?? 0,
        lastUpdated: competition?.lastUpdated ?? "",
      );

  AreaEntity _mapAreaModelToEntity(Area? area) => AreaEntity(
        id: area?.id ?? 0,
        name: area?.name ?? "",
        ensignUrl: area?.ensignUrl ?? "",
        countryCode: area?.countryCode ?? "",
      );
}
