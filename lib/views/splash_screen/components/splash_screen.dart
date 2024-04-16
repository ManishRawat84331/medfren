import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medfren/const/colors.dart';
import 'package:medfren/const/consts.dart';
import 'package:medfren/const/images.dart';
import 'package:medfren/const/string.dart';
import 'package:medfren/const/styles.dart';
import 'package:medfren/views/auth_screen/loginScreen.dart';
import 'package:medfren/views/home_screen/home_screen.dart';
import 'package:medfren/widgets/applogo_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// creating a method to change screen
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      // using get x;
      //  Get.to(() => HomeScreen());
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 300, height: size.height / 6),
            30.heightBox,
            appLogowidget(size: 1.5),
            // 5.heightBox,
            appName.text.white.fontFamily(bold).size(22).make(),
            2.heightBox,
            version.text.white.make(),
            Spacer(),
            credits.text.white.make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
