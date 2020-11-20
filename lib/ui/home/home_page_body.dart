import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/ui/utils/assets_path.dart';
import 'package:flutter_challenge_2/ui/utils/constants.dart';

import 'widgets/home_page_header.dart';
import 'widgets/professional_card.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: [
            HomePageHeader(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: sidePadding),
                child: ListView(
                    children: _persons
                        .map((e) => ProfessionalCard(
                              name: e.name,
                              imagaPath: e.imagePath,
                            ))
                        .toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Profile {
  final String name;
  final String imagePath;

  _Profile({this.name, this.imagePath});
}

final _persons = <_Profile>[
  _Profile(name: "Aziz Habib", imagePath: AssetsPath.habib),
  _Profile(name: "Maryam Osman", imagePath: AssetsPath.osman),
  _Profile(name: "Aziz Habib", imagePath: AssetsPath.habib),
  _Profile(name: "Maryam Osman", imagePath: AssetsPath.osman),
];
