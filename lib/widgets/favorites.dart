import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  int favorites = 0;

  void counter() {
    setState(() {
      favorites++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF0D47A1),
            Color(0xFF1976D2),
            Color(0xFF42A5F5),
          ],
        ),
      ),
      child: TextButton.icon(
          onPressed: counter,
          icon: Icon(Icons.volunteer_activism, color: Colors.white),
          label: Text(
            '$favorites',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
    ); //etiqueta
  }
}