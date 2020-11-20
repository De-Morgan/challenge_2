import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/colors.dart';
import 'package:flutter_challenge_2/style/onranlar_text_style.dart';
import 'package:flutter_challenge_2/ui/utils/assets_path.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AssetsPath.selin),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selin Güneş",
                        style: OnaranlarTextstyle.subTitle(color: appDark),
                      ),
                      Text(
                        "10 min ago",
                        style: OnaranlarTextstyle.caption(color: greyText),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.location_on,
                    color: onaranlarPrimary,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //
                    Expanded(
                      flex: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(24)),
                            image: DecorationImage(
                                image: AssetImage(AssetsPath.mainImage),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AssetsPath.topImage),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(24)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              AssetsPath.bottomImage),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(24)),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "+2",
                                        style: OnaranlarTextstyle.heading3(
                                            color: whiteColor, fontSize: 30),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        AssetsPath.sound,
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "6.2k Votes",
                        style: OnaranlarTextstyle.caption(fontSize: 14),
                      ),
                      const SizedBox(width: 12),
                      Icon(
                        Icons.message,
                        size: 12,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "300",
                        style: OnaranlarTextstyle.caption(fontSize: 14),
                      ),
                      Spacer(),
                      Image.asset(
                        AssetsPath.onaranlarIcon,
                        width: 30,
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Selin Güneş:",
                        style: OnaranlarTextstyle.subTitle(),
                      ),
                      Text(
                        " I found this place and it needs hacks!",
                        style: OnaranlarTextstyle.body(color: greyText),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "View comments",
                    style: OnaranlarTextstyle.button(
                        color: onaranlarPrimary, fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
