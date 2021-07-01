import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/routes/routes.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _displayAlert(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade600,
            shape: const StadiumBorder(),
          ),
          child: const Text('Activar Alerta'),
        ),
      ),
      floatingActionButton: getBackButton(context),
    );
  }

  void _displayAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.lightBlue.shade50,
          elevation: 200.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          title: const Text('Diálogo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de mi alerta'),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
