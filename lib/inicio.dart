import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'agregar_usuario.dart';
import 'agregar_categorias.dart';
import 'agregar_clientes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.android,
            size: 100,
          ),
          SizedBox(height: 70),

          //Hello
          Text(
            'HOLA',
            style: GoogleFonts.bebasNeue(
              fontSize: 54,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Bienvenido de Nuevo',
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Proyecto Desarrollo Web',
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),

          SizedBox(height: 15),

          RaisedButton(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new AgregarCategorias(),
            )),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'AGREGAR CATEGORIAS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 15),
          RaisedButton(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new AgregarClientes(),
            )),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'AGREGAR CLIENTES',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 230),

          Text(
            'Generar Venta',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ))),
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new AgregarUsuario(),
        )),
      ),
    );
  }
}
