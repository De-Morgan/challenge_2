import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/my_flutter_app_icons.dart';

import 'home_page_body.dart';

class SalonAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: Container(
          child:
              BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
            BottomNavigationBarItem(
                icon: Icon(MyCustomIcon.store), title: Text("Stores")),
            BottomNavigationBarItem(
                icon: Icon(Icons.motorcycle), title: Text("Trips")),
            BottomNavigationBarItem(
                icon: Icon(MyCustomIcon.truck), title: Text("Truck")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("Profiles")),
          ]),
        ),
      ),
    );
  }
}
