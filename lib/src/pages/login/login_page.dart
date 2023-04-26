import 'package:app_delivery/src/pages/login/login_controller.dart';
import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _con = LoginController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      // ignore: sized_box_for_whitespace
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _imageBanner(),
            _textUser(),
            _textPassword(),
            _buttonEnter(),
            _textNotAccount()
          ],
        ),
      ),
    ));
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.10,
          bottom: MediaQuery.of(context).size.height * 0.15),
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _textUser() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        keyboardType: TextInputType.name,
        controller: _con.userController,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Usuario',
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            contentPadding: const EdgeInsets.all(15),
            prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _textPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        obscureText: true,
        controller: _con.passController,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          hintStyle: TextStyle(color: MyColors.primaryColorDark),
          contentPadding: const EdgeInsets.all(15),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.lock,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _buttonEnter() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
      child: ElevatedButton(
        onPressed: _con.loginData,
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(vertical: 15)),
        child: const Text('Ingresar'),
      ),
    );
  }

  Widget _textNotAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta aun? ',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: MyColors.primaryColor),
          ),
        )
      ],
    );
  }

  void saludar(String name) {
    print(name);
  }
}
