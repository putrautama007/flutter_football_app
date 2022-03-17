class ListCompetitionModel {
  ListCompetitionModel({
    this.count,
    this.competitions,
  });

  final int? count;
  final List<Competition>? competitions;

  factory ListCompetitionModel.fromJson(Map<String, dynamic> json) =>
      ListCompetitionModel(
        count: json["count"],
        competitions: json["competitions"] == null
            ? null
            : List<Competition>.from(
            json["competitions"].map((x) => Competition.fromJson(x))),
      );
}

class Competition {
  Competition({
    this.id,
    this.area,
    this.name,
    this.code,
    this.emblemUrl,
    this.plan,
    this.numberOfAvailableSeasons,
    this.lastUpdated,
  });

  final int? id;
  final Area? area;
  final String? name;
  final String? code;
  final String? emblemUrl;
  final String? plan;
  final int? numberOfAvailableSeasons;
  final String? lastUpdated;

  factory Competition.fromJson(Map<String, dynamic> json) => Competition(
    id: json["id"],
    area: json["area"] == null ? null : Area.fromJson(json["area"]),
    name: json["name"],
    code: json["code"],
    emblemUrl: json["emblemUrl"],
    plan: json["plan"],
    numberOfAvailableSeasons: json["numberOfAvailableSeasons"],
    lastUpdated: json["lastUpdated"],
  );
}

class Area {
  Area({
    this.id,
    this.name,
    this.countryCode,
    this.ensignUrl,
  });

  final int? id;
  final String? name;
  final String? countryCode;
  final String? ensignUrl;

  factory Area.fromJson(Map<String, dynamic> json) => Area(
    id: json["id"],
    name: json["name"],
    countryCode: json["countryCode"],
    ensignUrl: json["ensignUrl"],
  );
}