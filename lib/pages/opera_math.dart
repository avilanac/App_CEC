import 'package:flutter/material.dart';

class OperacionesMatematicas extends StatefulWidget {
  const OperacionesMatematicas({Key? key}) : super(key: key);
  @override
  State<OperacionesMatematicas> createState() => _OperacionesMatematicasState();
}

class _OperacionesMatematicasState extends State<OperacionesMatematicas> {
  TextEditingController valor1 = TextEditingController();
  TextEditingController valor2 = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  double resultado = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operaciones Matemáticas'),
      ),
      body: Form(
        //form (formulario) Key para validar si un campo esta vacio
        key: key,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: valor1,
                decoration: InputDecoration(labelText: 'Ingrese valor 1'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo vacio';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: valor2,
                decoration: InputDecoration(labelText: 'Ingrese valor 2'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo vacio';
                  }
                  return null;
                },
              ),
              Text(
                'Resultado',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.indigo),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  resultado.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              if (key.currentState!.validate()) {
                setState(() {
                  resultado =
                      double.parse(valor1.text) + double.parse(valor2.text);
                  print(resultado);
                });
              }
            },
            icon: Icon(Icons.add),
            tooltip: 'suma los valores',
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  resultado =
                      double.parse(valor1.text) - double.parse(valor2.text);
                  print(resultado);
                });
              },
              icon: Icon(Icons.remove)),
          IconButton(
              onPressed: () {
                setState(() {
                  resultado =
                      double.parse(valor1.text) * double.parse(valor2.text);
                  print(resultado);
                });
              },
              icon: Icon(Icons.clear)),
          TextButton(
              onPressed: () {
                setState(() {
                  resultado =
                      double.parse(valor1.text) / double.parse(valor2.text);
                  print(resultado);
                });
              },
              child: Text(
                '/',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
        ],
      ),
    );
  }
}
