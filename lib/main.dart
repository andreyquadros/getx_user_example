import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxuser/modelview/user_modelview.dart';
import 'package:getxuser/view/home_page.dart';

void main() {
  Get.put(UserModelView());
  runApp(
      GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: homePage(),
  ));
}
