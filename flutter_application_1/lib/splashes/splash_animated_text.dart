import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter_application_1/Dashboards/Dash3/Dash3.dart';

class splash_text_animated extends StatelessWidget {
  const splash_text_animated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: Dash3(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "lib/assets/School_logo.jpg",
      text: "Splash Screen",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
