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
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Container(
                  //   height: 100,
                  //   width: 100,
                  //   color: Colors.red,
                  //   child: Image.asset(
                  //     'assets/img/Viagens.png',
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/img/Show.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/img/Restaurantes.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/img/Esportes.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Experiencia que voce pode gostar',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                children: List.generate(7, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text('Evento $index')],
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: 'avaliações',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
              backgroundColor: Colors.blueGrey),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/cadastroevento'),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
