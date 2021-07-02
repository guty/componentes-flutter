import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/girl-avatar.jpg'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue.shade800,
              child: const Text('AS'),
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/Infinity-loading.gif'),
            image: NetworkImage(
                'http://30f3l25np0o2lx1uq28eg3or-wpengine.netdna-ssl.com/wp-content/uploads/2013/02/North_Shore_Holiday_By_Heather_Brown.jpg')),
      ),
      floatingActionButton: getBackButton(context),
    );
  }
}
