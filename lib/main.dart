import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './prefs/theme.dart';
import './screens/introductry/introductry.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        home: const IntroductryPage());
  }
}
