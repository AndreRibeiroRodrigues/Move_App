import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Move'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: const [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  Text('Andre Ribero')
                ],
              ),
            ),
            ListTile(
              title: const Text('Pagina de Login'),
              onTap: () {
                Navigator.of(context).popAndPushNamed('/Login');
              },
            ),
            ListTile(
              title: const Text('Pagina de Cadastro'),
              onTap: () {
                Navigator.of(context).popAndPushNamed('/Cadastro');
              },
            )
          ],
        ),
      ),
      body: Container(),
      floatingActionButton: IconButton(
        onPressed: () => Navigator.of(context).pushNamed('/cadastroevento'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
