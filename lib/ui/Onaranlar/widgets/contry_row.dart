import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/onranlar_text_style.dart';
import 'package:flutter_challenge_2/ui/utils/assets_path.dart';

class CountryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ..._countries.map((e) => Expanded(
                    child: _CountryRowWidget(
                  title: e.name,
                  imagePath: e.imagePath,
                )))
          ],
        ),
        Divider()
      ],
    );
  }
}

class _CountryRowWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const _CountryRowWidget({Key key, this.imagePath = '', this.title = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(imagePath))),
            ),
          ),
          Text(
            title,
            style: OnaranlarTextstyle.caption(),
          )
        ],
      ),
    );
  }
}

class _Country {
  final String imagePath;
  final String name;

  _Country({this.imagePath, this.name});
}

final _countries = <_Country>[
  _Country(name: "Istanbul", imagePath: AssetsPath.istanbul),
  _Country(name: "Ankara", imagePath: AssetsPath.ankara),
  _Country(name: "Antalya", imagePath: AssetsPath.antalya),
  _Country(name: "Izmir", imagePath: AssetsPath.izmir),
  _Country(name: "Bursa", imagePath: AssetsPath.bursa),
];
