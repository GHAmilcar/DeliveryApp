import 'package:flutter/material.dart';

class RegisterController {
  BuildContext? context;

  // Capturando la informacion del front
  TextEditingController namesController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPasscontroller = TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void goToRolesPage() {
    Navigator.pushNamed(context!, 'roles');
  }

  void captureDataRegister() {
    String names = namesController.text.trim();
    String lastName = lastNameController.text.trim();
    String email = emailController.text.trim();
    String phone = phoneController.text.trim();
    String pass = passController.text.trim();
    String confirmPass = confirmPasscontroller.text.trim();

    if (pass == confirmPass && pass != '' || confirmPass != '') {
      print('Usuario registrado exitosamente: User: $names');
    } else {
      print('Las contraseñas no coincidens');
    }
  }
}
