import 'package:flutter/material.dart';
import 'package:medfren/const/consts.dart';

Widget Options( {String? title,  icon, ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            10.widthBox,
            title!.text.black.fontFamily(bold).size(20).make()
          ],
        ),
      ),
    ),
  );
}
