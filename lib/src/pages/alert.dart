import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/routes/routes.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas'),
      ),
      floatingActionButton: getBackButton(context),
    );
  }
}
