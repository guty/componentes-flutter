import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/routes/routes.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          _cardTipo1(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
      floatingActionButton: getBackButton(context),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue.shade800,
            ),
            title: const Text("This is card's title"),
            subtitle: const Text(
                'I need a very long text to display as a card subtitle, thats why i keep writing in this area'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('OK'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: const [
          Image(
            image: NetworkImage(
                'https://s2.best-wallpaper.net/wallpaper/1920x1080/1212/The-sunset-beach-scenery-the-sea-the-broken-boat-the-red-clouds_1920x1080.jpg'),
          )
        ],
      ),
    );
  }
}
