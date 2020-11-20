import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/colors.dart';

import 'style/theme.dart';
import 'ui/Onaranlar/Onaranlar_home_page.dart';
import 'ui/home/home_page.dart';
import 'ui/utils/context_extension.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: AppSelector(),
    );
  }
}

class AppSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => context.navigateTo(SalonAppHomePage()),
              child: Container(
                color: primaryColor,
                alignment: Alignment.center,
                child: Text("App 1"),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => context.navigateTo(OnaranlarHomePage()),
              child: Container(
                color: onaranlarPrimary,
                alignment: Alignment.center,
                child: Text("App 2"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
