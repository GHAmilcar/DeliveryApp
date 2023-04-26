import 'package:app_delivery/src/pages/register/register_controller.dart';
import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final RegisterController _con = RegisterController();

  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.20),
          child: Column(
            children: [
              _firstname(),
              _lastName(),
              _email(),
              _phone(),
              _passWord(),
              _confirmPass(),
              _buttonRegister()
            ],
          ),
        ),
      ),
    );
  }

  Widget _firstname() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: _con.namesController,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Nombres',
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(
              Icons.account_circle,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _lastName() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: _con.lastNameController,
        decoration: InputDecoration(
            hintText: 'Apellidos',
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.account_circle_rounded,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _email() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: _con.emailController,
        decoration: InputDecoration(
            hintText: 'Correo eletrónico',
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _phone() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: _con.phoneController,
        decoration: InputDecoration(
            hintText: 'Telefono',
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.phone_iphone,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _passWord() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: _con.passController,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            ),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark,
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15)),
      ),
    );
  }

  Widget _confirmPass() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: _con.confirmPasscontroller,
        decoration: InputDecoration(
            hintText: 'Confirmar Contraseña',
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            contentPadding: const EdgeInsets.all(15),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.lock_person_sharp,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
        child: ElevatedButton(
            onPressed: _con.captureDataRegister,
            style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.symmetric(vertical: 15)),
            child: const Text('Registrarse')));
  }
}
