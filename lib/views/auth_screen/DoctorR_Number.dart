import 'package:flutter/material.dart';
import 'package:medfren/const/consts.dart';
import 'package:medfren/views/auth_screen/compnents/options.dart';
import 'package:medfren/views/auth_screen/signUpScreen.dart';
import 'package:medfren/widgets/applogo_widget.dart';
import 'package:medfren/widgets/customButton.dart';
import 'package:medfren/widgets/inputfield.dart';

class DoctorR_Number extends StatefulWidget {
  const DoctorR_Number({super.key});

  @override
  State<DoctorR_Number> createState() => DoctorR_NumberState();
}

class DoctorR_NumberState extends State<DoctorR_Number> {
  bool NMC = false;
  onChangeScreen() {
    setState(() {
      NMC = !NMC;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              80.heightBox,

              appLogowidget(size: 3),
              (LogIn + " $appName")
                  .text
                  .white
                  .fontFamily(bold)
                  .shadow(2, 1.2, 0.5, Colors.black)
                  .size(25)
                  .make(),
              20.heightBox,

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Options(
                        ontap: () {
                          onChangeScreen();
                        },
                        title: "NMC",
                        icon: Icons.circle,
                      ),
                      Options(
                        ontap: () {
                          onChangeScreen();
                        },
                        title: "DMC",
                        icon: Icons.circle_outlined,
                      )
                    ],
                  ),
                  InputField(title: email, hintText: emailHint),
                  5.heightBox,
                  InputField(title: password, hintText: passwordHint),
                  5.heightBox,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: forgotPassword.text.make(),
                    ),
                  ),
                  10.heightBox,
                  CustomButton(
                          onpress: () {}, title: LogIn, color: loginButtonColor)
                      .box
                      .width(context.screenWidth / 1.75)
                      .make(),
                  5.heightBox,
                  "or Create new account ".text.make(),
                  5.heightBox,
                  CustomButton(
                          onpress: () {
                            Get.to(() => SignUpScreen());
                          },
                          title: signUp,
                          color: Color.fromARGB(255, 222, 240, 255))
                      .box
                      .width(context.screenWidth / 1.75)
                      .make(),
                ],
              )
                  .box
                  .height(size.height / 1.75)
                  .width(size.width / 1.25)
                  .white
                  .rounded
                  .shadow
                  .make(),
              // )
            ],
          ),
        ));
  }
}
