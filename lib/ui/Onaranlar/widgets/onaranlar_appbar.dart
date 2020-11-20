import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/onranlar_text_style.dart';
import 'package:flutter_challenge_2/ui/utils/assets_path.dart';
import 'package:flutter_challenge_2/ui/utils/constants.dart';

class OnaranlarAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            const SizedBox(width: sidePadding),
            Spacer(),
            Image.asset(AssetsPath.onaranlarIcon),
            Text(
              "Onaranlar",
              style: OnaranlarTextstyle.title(fontSize: 24),
            ),
            Spacer(),
            Icon(Icons.search),
            const SizedBox(width: sidePadding),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
