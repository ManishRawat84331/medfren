import 'package:flutter/material.dart';
import 'package:medfren/const/consts.dart';

Widget InputField(
    {String? title,
    double? width,
    String? hintText,
    TextEditingController? controller}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title!.text.color(Colors.black).size(16).make(),
        5.heightBox,
        SizedBox(
          width: width,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText,
                filled: true,
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey))),
          ),
        )
      ],
    ),
  );
}
