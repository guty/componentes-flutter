import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'flutter_dash': Icons.flutter_dash
};

Icon getIcon(String icono) {
  return Icon(
    _icons[icono],
    color: Colors.blue.shade600,
  );
}
