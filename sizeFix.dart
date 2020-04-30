import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData queryData;
  static double width;
  static double height;

  void init(BuildContext context){
    queryData = MediaQuery.of(context);
    width = queryData.size.width;
    height = queryData.size.height;
  }
}