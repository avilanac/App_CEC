import 'package:flutter/material.dart';
import 'package:untitled/pages/pedidos_page.dart';

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({Key? key}) : super(key: key);
  @override
  State<IniciarSesion> createState() => _IniciarSesion();
}
class _IniciarSesion extends State<IniciarSesion> {

  TextEditingController userTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: const Text('Login'),
      ),
      body:
      Form(
        //form (formulario) Key para validar si un campo esta vacio
        key: key,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DrawerHeader(child: Column (
                    children: [
                      Image.network('https://i.pinimg.com/originals/33/57/9d/33579d5bdc54a7a1925bc304cbe992fb.jpg',
                        height:100,
                      ),
                    ])),
                TextFormField(
                  controller: userTextController,
                  decoration: InputDecoration(labelText: 'User'),
                  validator: (value){
                    if(value!.isEmpty) {
                      return 'Campo vacio';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordTextController,
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (value){
                    if(value!.isEmpty) {
                      return 'Campo vacio';
                    }
                    if (value.length <4){
                      return 'valor menor a 4';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Ingresar',style: TextStyle(color: Colors.white), ),
                    onPressed:(){
                      if(key.currentState!.validate()){
                        setState(() {
                        });
                        _showPedidosPage(context);
                      }
                    } ,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showPedidosPage(BuildContext context) {
    final route = MaterialPageRoute(builder:(BuildContext context){
      return PedidosPage();
    });
    Navigator.of(context).push(route);
  }
}