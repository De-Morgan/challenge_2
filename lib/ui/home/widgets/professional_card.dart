import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/colors.dart';
import 'package:flutter_challenge_2/ui/utils/assets_path.dart';

class ProfessionalCard extends StatelessWidget {
  final String imagaPath;
  final String name;

  const ProfessionalCard(
      {Key key, this.imagaPath = AssetsPath.osman, this.name = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: Row(
            children: [
              Expanded(
                  child: ClipPath(
                clipper: ProfileImageClipper(),
                child: Container(
                    child: Image.asset(
                  imagaPath,
                  fit: BoxFit.cover,
                  height: 110,
                )),
              )),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text("Hair specialist & Face makeup",
                        style: Theme.of(context).textTheme.caption),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                        ),
                        Text("Sulymani, Iraq",
                            style: Theme.of(context).textTheme.caption)
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Spacer(),
                          FlatButton(
                              onPressed: () {}, child: Text("View more..."))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    final path = Path()
      ..lineTo(0, height)
      ..lineTo(width * 0.9, height)
      ..quadraticBezierTo(width, height * 0.3, width * 0.65, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
