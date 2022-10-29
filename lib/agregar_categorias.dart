import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AgregarCategorias extends StatefulWidget {
  @override
  _AgregarUsuarioState createState() => _AgregarUsuarioState();
}

class _AgregarUsuarioState extends State<AgregarCategorias> {
  TextEditingController controlNombre = new TextEditingController();
  TextEditingController controlTelefono = new TextEditingController();
  TextEditingController controlEmail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("AGREGAR CATEGORIAS"),
        ),
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: controlNombre,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nombre',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: controlTelefono,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Activo "1 o 0"',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: controlEmail,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Estado "1 o 0"',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            SizedBox(height: 10),

            //boton iniciar
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              onPressed: () {
                agregarCategorias();
                Navigator.of(context).pop();
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'ENVIAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ))));
  }

  void agregarCategorias() {
    var url =
        "http://webproyectopuntoventa.epizy.com/ConexionAppp/agregarUsuario.php";
    http.post(url, body: {
      "categories_name": controlNombre.text,
      "categories_active": controlTelefono.text,
      "categories_status": controlEmail.text,
    });
  }
}
