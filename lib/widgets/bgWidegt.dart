import 'package:flutter/material.dart';
import 'package:medfren/const/colors.dart';

Widget bgWidget({Widget? child}){
  return Container(
    color: backgroundColor,
    child: child
    ,
  );
}