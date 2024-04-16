import 'package:flutter/material.dart';
import 'package:medfren/const/consts.dart';
import 'package:medfren/view_model/login_controller.dart';
import 'package:medfren/view_model/login_new.dart';
import 'package:medfren/views/auth_screen/compnents/options.dart';
import 'package:medfren/views/auth_screen/signUpScreen.dart';
import 'package:medfren/widgets/applogo_widget.dart';
import 'package:medfren/widgets/customButton.dart';
import 'package:medfren/widgets/inputfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool isPatent = true;
  bool isDoctor = false;
  onChangeScreen() {
    setState(() {
      isPatent = !isPatent;
      isDoctor = !isDoctor;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: isPatent
            ? Center(
                child: Column(
                  children: [
                    80.heightBox,
                    // Container(
                    //   height: size.height / 10,
                    //   width: size.width / 10,
                    //   color: Colors.yellow,
                    //   // child: appLogoWidget,
                    // ),
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
                                onpress: () async {
                                  final email = _email.text;
                                  final password = _password.text;

                                  try {
                                    final response = await LoginService.login(
                                        email, password);
                                    print('Login successful: $response');
                                  } catch (e) {
                                    print('Login failed: $e');
                                  }
                                },
                                title: LogIn,
                                color: loginButtonColor)
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
              )
            // Here is for the Doctor
            : Center(
                child: Column(
                  children: [
                    60.heightBox,
                    // Container(
                    //   height: size.height / 10,
                    //   width: size.width / 10,
                    //   color: Colors.yellow,
                    //   // child: appLogoWidget,
                    // ),
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
                        InputField(
                            controller: controller.emailController.value,
                            title: email,
                            hintText: emailHint,
                            width: context.screenWidth / 1.3),
                        5.heightBox,
                        InputField(
                            controller: controller.passwordController.value,
                            title: password,
                            hintText: passwordHint,
                            width: context.screenWidth / 1.3),
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
                                onpress: () {
                                  controller.loginApi();
                                },
                                title: LogIn,
                                color: loginButtonColor)
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
                        .height(size.height / 1.50)
                        .width(size.width / 1.20)
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
