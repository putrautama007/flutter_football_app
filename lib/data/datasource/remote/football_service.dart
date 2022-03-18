import 'package:flutter_football_app/data/model/list_competition_model.dart';
import 'package:flutter_football_app/utils/network/api_helper.dart';
import 'package:flutter_football_app/utils/strings/api_strings.dart';
import 'package:injectable/injectable.dart';

@injectable
class FootballService {
  final ApiHelper apiHelper;

  FootballService({
    required this.apiHelper,
  });

  Future<ListCompetitionModel> getListCompetition() async {
    try {
      final result = await apiHelper.get(url: "${ApiStrings.baseUrl}${ApiStrings.listCompetition}");
      return ListCompetitionModel.fromJson(result);
    } catch (_) {
      rethrow;
    }
  }
}
