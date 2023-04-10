import 'package:flutter/material.dart';
import 'package:move/cadastro_evento/cadastro_evento_page.dart';
import 'package:move/home/home_page.dart';
import 'package:move/login_cadastro/Cadastro_page.dart';
import 'package:move/login_cadastro/login_Page.dart';

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
        '/cadastroevento':(_)=>CadastroEventoPage()
      },
    );
  }
}
