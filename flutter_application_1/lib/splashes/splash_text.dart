import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboards/Dash1/dashboard.dart';

class Splash_text extends StatelessWidget {
  const Splash_text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: DashPage(),
      duration: 10000,
      imageSize: 130,
      imageSrc: "lib/assets/School_logo.jpg",
      text: "Welcome",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.lightBlue.shade900,
        Colors.lightBlue.shade700,
        Colors.lightBlue.shade400,
        Colors.blue.shade100,
      ],
      backgroundColor: Colors.white,
    );
  }
}
