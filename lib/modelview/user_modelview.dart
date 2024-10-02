import 'package:get/get.dart';
import 'package:getxuser/model/user_model.dart';

class UserModelView extends GetxController{
  var user = User(name: 'nome', age: 0).obs;

  void updateName(String newName){
    user.update((val){
      val?.name = newName;
    });
  }
  void updateAge(int newAge){
    user.update((val){
      val?.age = newAge;
    });
  }
}