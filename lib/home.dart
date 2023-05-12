import 'package:flutter/material.dart';
import 'package:magic_8_ball/build_landscape.dart';
import 'package:magic_8_ball/build_portrait.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String appBarTitle = 'Ask Me Anything';

    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return BuildPortrait(appBarTitle: appBarTitle);
      } else {
        return BuildLandscape(appBarTitle: appBarTitle);
      }
    });
  }
}
