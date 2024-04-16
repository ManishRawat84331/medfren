import 'package:flutter/material.dart';
import 'package:medfren/views/auth_screen/compnents/options.dart';
import 'package:medfren/views/auth_screen/registerDoctor.dart';
import 'package:medfren/views/auth_screen/registerPatent.dart';
import 'package:medfren/widgets/applogo_widget.dart';
import 'package:medfren/widgets/customButton.dart';
import 'package:medfren/widgets/inputfield.dart';

import '../../const/consts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ispatent = true;

  onChangeScreen() {
    setState(() {
      ispatent = !ispatent;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: ispatent
          ? Center(
              child: Column(
                children: [
                  60.heightBox,

                  appLogowidget(size: 3),
                  (signUp + " $appName")
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
                            title: "Patent",
                            icon: Icons.circle,
                          ),
                          Options(
                            ontap: () {
                              onChangeScreen();
                            },
                            title: "Doctor",
                            icon: Icons.circle_outlined,
                          )
                        ],
                      ),
                      InputField(title: email, hintText: emailHint),
                      4.heightBox,
                      InputField(title: password, hintText: passwordHint),
                      4.heightBox,
                      InputField(
                          title: confirmPassword,
                          hintText: confirmPasswordHint),
                      4.heightBox,
                      CustomButton(
                              onpress: () {
                                Get.to(RegisterPatent());
                              },
                              title: signUp,
                              color: loginButtonColor)
                          .box
                          .width(context.screenWidth / 2)
                          .make(),
                      5.heightBox,
                    ],
                  )
                      .box
                      .height(size.height / 1.95)
                      .width(size.width / 1.25)
                      .white
                      .rounded
                      .shadow
                      .make(),
                  // )
                ],
              ),
            )
          :
          // here is for the doctor
          Center(
              child: Column(
                children: [
                  60.heightBox,

                  appLogowidget(size: 3),
                  (signUp + " $appName")
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
                            title: "Patent",
                            icon: Icons.circle_outlined,
                          ),
                          Options(
                            ontap: () {
                              onChangeScreen();
                            },
                            title: "Doctor",
                            icon: Icons.circle,
                          )
                        ],
                      ),
                      InputField(title: email, hintText: emailHint),
                      4.heightBox,
                      InputField(title: password, hintText: passwordHint),
                      4.heightBox,
                      InputField(
                          title: confirmPassword,
                          hintText: confirmPasswordHint),
                      4.heightBox,
                      CustomButton(
                              onpress: () {
                                Get.to(RegisterDoctor());
                              },
                              title: signUp,
                              color: loginButtonColor)
                          .box
                          .width(context.screenWidth / 2)
                          .make(),
                      5.heightBox,
                    ],
                  )
                      .box
                      .height(size.height / 1.95)
                      .width(size.width / 1.25)
                      .white
                      .rounded
                      .shadow
                      .make(),
                  // )
                ],
              ),
            ),
    );
  }
}
