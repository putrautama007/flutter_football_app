import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_football_app/bloc/list_competition/list_competition_bloc.dart';
import 'package:flutter_football_app/bloc/list_competition/list_competition_state.dart';
import 'package:flutter_football_app/widget/card/competition_card.dart';
import 'package:flutter_football_app/widget/loading_indicator/app_loading_indicator.dart';

class ListCompetitionScreen extends StatelessWidget {
  const ListCompetitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Foot Ball App",
        ),
      ),
      body: BlocBuilder<ListCompetitionBloc, ListCompetitionState>(
        builder: (context, state) {
          return buildBody(
            state,
          );
        },
      ),
    );
  }

  Widget buildBody(ListCompetitionState listCompetitionState) {
    if (listCompetitionState is ListCompetitionHasData) {
      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: listCompetitionState.result.length,
        itemBuilder: (BuildContext context, int index) {
          return CompetitionCard(
            onTap: () {},
            competition: listCompetitionState.result[index],
          );
        },
      );
    } else if (listCompetitionState is ListCompetitionEmpty) {
      return const Center(
        child: Text(
          "Empty data",
        ),
      );
    } else if (listCompetitionState is ListCompetitionError) {
      return const Center(
        child: Text(
          "Error data",
        ),
      );
    } else {
      return AppLoadingIndicator(
        isShowLoading: listCompetitionState is ListCompetitionLoading,
      );
    }
  }
}
