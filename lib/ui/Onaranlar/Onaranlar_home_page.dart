import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/colors.dart';

import 'widgets/contry_row.dart';
import 'widgets/onaranlar_appbar.dart';
import 'widgets/profile_card.dart';

class OnaranlarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: OnaranlarAppBar(),
        body: Column(
          children: [
            CountryRow(),
            Expanded(
                child: ListView(
              children: [
                ProfileCard(),
                ProfileCard(),
              ],
            ))
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.location_on, title: 'Map'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.notifications, title: 'Notification'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          initialActiveIndex: 2,
          backgroundColor: whiteColor,
          activeColor: onaranlarPrimary,
          color: greyText,

          //onTap: (int i) => print('click index=$i'),
        ));
  }
}
