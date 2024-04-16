import 'package:flutter/material.dart';
import 'package:medfren/const/consts.dart';

Widget appLogowidget({double ?size}) {
  // using velocity x

  return Image.asset(
    appLogoGIF,
    scale: size,
    //fit: BoxFit.cover,

    // .box
    // .white
    // .size(size.width / 2, size.height / 4.5)
    // .padding(EdgeInsets.all(8))
    // .rounded
    // .make(),
  );
}
