import 'package:flutter/material.dart';

import '../const/consts.dart';

Widget CustomButton({
  onpress,
  color,
  String? title,
}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color, padding: const EdgeInsets.all(12)),
      onPressed: onpress,
      child: title!.text.color(Colors.black).fontFamily(bold).make());
}
