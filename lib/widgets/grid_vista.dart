import 'package:flutter/material.dart';
import 'package:untitled/constantes/razas_perros.dart';

class GridVista extends StatelessWidget {
  const GridVista({Key? key}) : super(key: key);

  static RazasPerros _razasPerros = RazasPerros();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: _razasPerros.ListasRazasPerrosMap.map<Column>(
            (razasPerros) => Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 3, child: Image.network(razasPerros['url_imagen']!,
                  fit: BoxFit.fill,
                )
                ),
                Expanded(
                    flex: 1,
                    child: Center(
                        child:
                        Text(
                      razasPerros['nombre']!,
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )
                    )),
                Expanded(
                    flex: 1,
                    child: Center(
                        child:
                        Text(
                          razasPerros['Origen']!,
                          style: TextStyle(fontSize: 15),
                        )
                    )),
                Expanded(
                    flex: 1,
                    child: Center(
                        child:
                        Text(
                          razasPerros['Tamaño']!,
                          style: TextStyle(fontSize: 15),
                        )
                    )),
              ],
            ),
          ).toList()),
    );
  }
}
