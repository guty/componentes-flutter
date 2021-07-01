import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
      ),
      floatingActionButton: getBackButton(context),
    );
  }
}
