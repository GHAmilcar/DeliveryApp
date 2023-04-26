import 'package:flutter/material.dart';

class LoginController {
  BuildContext? context;

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context!, 'register');
  }

  void loginData() {
    String user = userController.text.trim();
    String pass = passController.text.trim();
    final Object loginData = {"userName": user, "userPass": pass};

    print('User: $user Pass: $pass');
    print('User Data: $loginData');
  }
}
