import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Hola desde Login'),
              const NombreInput(),
              ElevatedButton(onPressed: () {}, child: const Text('Press'))
            ],
          ),
        ));
  }
}

class NombreInput extends StatelessWidget {
  const NombreInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(hintText: 'Nombre'),
      ),
    );
  }
}
