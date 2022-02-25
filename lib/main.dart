import 'package:flutter/material.dart';
import 'package:untitled/pages/iniciar_sesion.dart';
import 'package:untitled/pages/listas.dart';
import 'package:untitled/pages/pedidos_page.dart';
import 'package:untitled/widgets/favorites.dart';
import 'package:untitled/pages/opera_math.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Taller',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PrimerWidget(),
    );
  }
}

class PrimerWidget extends StatelessWidget {
  const PrimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Column( children: [
              Image.network(
                'https://i.pinimg.com/originals/33/57/9d/33579d5bdc54a7a1925bc304cbe992fb.jpg',
                height: 100,
              ),
            ],)),
            TextButton.icon(
                onPressed: () {
                  //codigo para ejecutar
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => IniciarSesion()));
                },
                icon: Icon(Icons.arrow_circle_up),
                label: Text('Login')),
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PedidosPage()));
                },
                icon: Icon(Icons.check_box_outlined),
                label: Text('Pedidos')),

            TextButton.icon(
                onPressed: () {
                  //codigo para ejecutar
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OperacionesMatematicas()));
                },
                icon: Icon(Icons.calculate),
                label: Text('Operaciones')),
            TextButton.icon(
                onPressed: () {
                  //codigo para ejecutar
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Listas()));
                },
                icon: Icon(Icons.list),
                label: Text('Listas')),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text('CEC App'),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Image.network(
                'https://i.pinimg.com/originals/33/57/9d/33579d5bdc54a7a1925bc304cbe992fb.jpg',
                width: 300,
                alignment: Alignment.center,
              ),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Pensamos en su mascota',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text('Venta de productos especializados'),
                    ],
                  ),
                ],
              ),
              Favorites(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.indigoAccent),
                      Text(
                        'Llamar',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.email, color: Colors.indigoAccent),
                      Text(
                        'Correo',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.facebook, color: Colors.indigoAccent),
                      Text(
                        'Síguenos',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'Fabricamos y comercializamos ropa y accesorios para los peludos de su hogar. '
                  'Somos punto de venta de productos de aseo y belleza, galleteria, juguetería y comederos.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
