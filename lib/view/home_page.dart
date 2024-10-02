import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxuser/view/update_user_page.dart';

import '../modelview/user_modelview.dart';

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);

  final userModelView = Get.find<UserModelView>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(
                  (Icons.update),
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Get.to(() => UpdateUserPage());
              },
            )
          ],
          backgroundColor: Colors.blue,
          title: Text(
            'Página Inicial',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Nome: ${userModelView.user.value.name}',
                    style: TextStyle(fontSize: 30),
                  )),
              Obx(() => Text(
                    'Idade: ${userModelView.user.value.age}',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        ));
  }
}
