import 'package:flutter/material.dart';

import 'package:componentes_flutter/src/pages/alert.dart';
import 'package:componentes_flutter/src/pages/avatar_page.dart';
import 'package:componentes_flutter/src/pages/card_page.dart';
import 'package:componentes_flutter/src/pages/home_page.dart';
import 'package:componentes_flutter/src/pages/animations_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animations': (BuildContext context) => const AnimationsPage(),
  };
}

MaterialPageRoute defaultPageRoute() {
  return MaterialPageRoute(builder: (BuildContext context) => HomePage());
}

FloatingActionButton getBackButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () => Navigator.pop(context),
    child: const Icon(Icons.arrow_back),
  );
}
