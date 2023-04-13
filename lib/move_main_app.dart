import 'package:flutter/material.dart';
import 'package:move/pages/cadastro_evento_page.dart';
import 'package:move/pages/home_page%20copy.dart';
import 'package:move/pages/home_page.dart';
import 'package:move/pages/Cadastro_page.dart';
import 'package:move/pages/login_Page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Move',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/':(_) => HomePage(),
        '/Login':(_)=> LoginPage(),
        '/Cadastro':(_) => CadastroPage(),
        '/cadastroevento':(_)=> CadastroEventoPage()
      },
    );
  }
}
