import 'package:flutter/material.dart';

class HomePageCopy extends StatelessWidget {
  const HomePageCopy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 20,
            
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 5,
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 10,
            ),
          ),
        ],
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
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
