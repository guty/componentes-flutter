import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';

//import 'package:componentes_flutter/src/pages/alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Components',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return defaultPageRoute();
      },
    );
  }
}
