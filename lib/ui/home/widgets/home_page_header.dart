import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/ui/utils/assets_path.dart';
import 'package:flutter_challenge_2/ui/utils/constants.dart';

import 'header_carousel.dart';

class HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderCarousel(),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: sidePadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Altoonas Salon",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 24),
                  ),
                  Text(
                    "Salim Street, Opposite lawlaw - Sulymani",
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AssetsPath.rating),
                  Text("(10 reviews)",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 8))
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: sidePadding),
          child: TabBar(tabs: [
            Tab(
              text: "Info",
            ),
            Tab(
              text: "Service",
            ),
            Tab(
              text: "Products",
            ),
            Tab(
              text: "Professionals",
            ),
            Tab(
              text: "Reviews",
            ),
          ]),
        ),
      ],
    );
  }
}
