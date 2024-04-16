import 'package:flutter/material.dart';
import 'package:medfren/const/consts.dart';
import 'package:medfren/widgets/applogo_widget.dart';
import 'package:medfren/widgets/customButton.dart';

import '../../widgets/inputfield.dart';

class RegisterPatent extends StatefulWidget {
  const RegisterPatent({Key? key}) : super(key: key);

  @override
  State<RegisterPatent> createState() => _RegisterPatentState();
}

class _RegisterPatentState extends State<RegisterPatent> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              40.heightBox,

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
                  10.heightBox,
                  InputField(title: userName, hintText: userNameHint),
                  4.heightBox,
                  InputField(title: name, hintText: nameHint),
                  4.heightBox,
                  InputField(title: dob, hintText: dobHint),
                  4.heightBox,
                  InputField(title: phoneNumber, hintText: phoneNumberHint),
                  14.heightBox,
                  CustomButton(
                          onpress: () {},
                          title: signUp,
                          color: loginButtonColor)
                      .box
                      .width(context.screenWidth / 2)
                      .make(),
                  5.heightBox,
                ],
              )
                  .box
                  .height(size.height / 1.65)
                  .width(size.width / 1.25)
                  .white
                  .rounded
                  .shadow
                  .make(),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
