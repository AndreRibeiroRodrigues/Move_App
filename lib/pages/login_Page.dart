import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailEC = TextEditingController();
    final senhaEC = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/Logo.png',
                  height: 100,
                  width: 200,
                ),
                TextFormField(
                  controller: emailEC,
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: senhaEC,
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: const Text('senha'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(134, 93, 255, 0.6)),
                  child: const Text('Entrar'),
                ),
                TextButton(
                  onPressed: () =>Navigator.of(context).pushNamed('/Cadastro'),
                  style: TextButton.styleFrom(
                      foregroundColor: const Color.fromRGBO(134, 93, 255, 0.6)),
                  child: const Text('Criar Uma nova Conta'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
