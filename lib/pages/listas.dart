import 'package:flutter/material.dart';
import 'package:untitled/widgets/grid_vista.dart';

class Listas extends StatelessWidget {
  const Listas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Razas de perros'),
      ),
      body: GridVista(),
    );
  }
}
