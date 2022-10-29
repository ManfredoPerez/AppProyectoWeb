import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AgregarUsuario extends StatefulWidget {
  @override
  _AgregarUsuarioState createState() => _AgregarUsuarioState();
}

class _AgregarUsuarioState extends State<AgregarUsuario> {
  TextEditingController controlFactura = new TextEditingController();
  TextEditingController controlFecha = new TextEditingController();
  TextEditingController controlNombre = new TextEditingController();
  TextEditingController controlTelefono = new TextEditingController();
  TextEditingController controlPrecio = new TextEditingController();
  TextEditingController controlTotal = new TextEditingController();

  String dropdownvaluePago = '-- Seleccione el Tipo de Pago --';

  // List of items in our dropdown menu
  var items = [
    '-- Seleccione el Tipo de Pago --',
    'Efectivo',
    'Tarjeta de Credito',
    'Tarjeta de Debito',
    'Google Pay',
  ];

  String dropdownvalueLugar = '-- Seleccione el Lugar de Pago --';

  // List of items in our dropdown menu
  var items2 = [
    '-- Seleccione el Lugar de Pago --',
    'Guatemala',
    'Quetzlatenango',
    'Internet',
    'Central',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("AGREGAR VENTAS"),
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
                    controller: controlFactura,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Factura #',
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
                    controller: controlFecha,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Fecha',
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
                    controller: controlNombre,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nombre del Cliente',
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
                    controller: controlTelefono,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Telefono',
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Medicina',
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
                    controller: controlPrecio,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Precio',
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Iva',
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
                    controller: controlTotal,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Total',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            DropdownButton(
              // Initial Value
              value: dropdownvaluePago,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  dropdownvaluePago = newValue;
                });
              },
            ),

            SizedBox(height: 10),

            DropdownButton(
              // Initial Value
              value: dropdownvalueLugar,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items2.map((String items2) {
                return DropdownMenuItem(
                  value: items2,
                  child: Text(items2),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  dropdownvalueLugar = newValue;
                });
              },
            ),

            SizedBox(height: 10),

            //boton iniciar
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              onPressed: () {
                agregarUsuario();
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

  void agregarUsuario() {
    var url =
        "http://webproyectopuntoventa.epizy.com/ConexionAppp/agregarVentas.php";
    http.post(url, body: {
      "uno": controlFactura.text,
      "orderDate": controlFecha.text,
      "clientName": controlNombre.text,
      "clientContact": controlTelefono.text,
      "totalAmount": controlPrecio.text,
      "grandTotalValue": controlTotal.text,
    });
  }
}
