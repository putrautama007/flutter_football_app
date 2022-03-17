import 'package:flutter/material.dart';
import 'package:flutter_football_app/data/model/list_competition_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompetitionCard extends StatelessWidget {
  final Competition competition;
  final VoidCallback onTap;

  const CompetitionCard({
    required this.competition,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              15.0,
            ),
          ),
          border: Border.all(
            color: Colors.black26,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 0.2.sh,
              width: 0.5.sw,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(15.0),
                ),
                child: SvgPicture.network(
                  competition.area!.ensignUrl!,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    competition.name!,
                  ),
                ),
                Text(
                  competition.area!.name!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
