import 'package:flutter/material.dart';
import 'package:guerrero0366/pantalla0366/panel0366/panel_pantalla0366.dart';

void main() => runApp(const MiAppMercado0366());

class MiAppMercado0366 extends StatelessWidget {
  const MiAppMercado0366({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mercado Guerrero0366",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
          useMaterial3: true),
      home: const PanelPantalla0366(),
    );
  }
}
