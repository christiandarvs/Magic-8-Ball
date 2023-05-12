import 'package:flutter/material.dart';
import 'package:magic_8_ball/ask_page.dart';

class BuildLandscape extends StatelessWidget {
  const BuildLandscape({
    super.key,
    required this.appBarTitle,
  });

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: const SafeArea(
        child: Center(
            child: AskPage(
          imageHeight: 250,
          imageWidth: 250,
        )),
      ),
    );
  }
}
