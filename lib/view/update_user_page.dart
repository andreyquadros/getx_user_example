import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxuser/modelview/user_modelview.dart';

class UpdateUserPage extends StatelessWidget {
  UpdateUserPage({Key? key}) : super(key: key);

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();

  UserModelView userModelView = Get.find<UserModelView>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text('Página de Atualização do User', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameTextEditingController,
              decoration: InputDecoration(
                  label: Text('Insira o nome a ser atualizado'),
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 32,),
            TextFormField(
              controller: ageTextEditingController,
              decoration: InputDecoration(
                  label: Text('Insira a idade a ser atualizada'),
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 32,),
            ElevatedButton(
              onPressed: () {
                userModelView.updateName(nameTextEditingController.text);
                userModelView.updateAge(int.parse(ageTextEditingController.text));
                Get.snackbar('Sucesso!', 'Valores atualizados com sucesso!');
              },
              child: Text(
                'Atualizar',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
