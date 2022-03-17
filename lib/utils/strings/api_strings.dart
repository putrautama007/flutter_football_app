import 'package:flutter_football_app/utils/extension/app_extensions.dart';

class ApiStrings {
  static const String apiToken = "616cb270f032489fb74d22a6d14117c4";
  static const String baseUrl = "https://api.football-data.org/v2/";
  static const String listCompetition =
      "competitions?areas=2072,2224,2114,2081,2088,2163,2187&plan=TIER_ONE";

  static String matches({required String competitionId}) =>
      "competitions/$competitionId/matches?dateFrom=$_getDateFrom&dateTo=$_getDateTo";

  static DateTime now = DateTime.now();

  static String get _getDateFrom {
    DateTime getDateFrom = DateTime(now.year, now.month, now.day - 14);
    return getDateFrom.toYyyyMmDdFormat;
  }

  static String get _getDateTo {
    DateTime getDateTo = DateTime(now.year, now.month, now.day + 14);
    return getDateTo.toYyyyMmDdFormat;
  }
}