import 'package:flutter/material.dart';

const rojoPrincipal = Color.fromARGB(255, 227, 74, 74);

class Editsucursales3 extends StatelessWidget {
  const Editsucursales3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reservas"),
        centerTitle: true,
        backgroundColor: rojoPrincipal,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          )
        ],
        actionsIconTheme: const IconThemeData(
          size: 35,
        ),
      ),
      body: body(),
    );
  }
}

Widget body() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 128),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Añadir Sucursal',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(30),
          width: 500,
          height: 300,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 199, 199),
              border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 0.259), width: 4),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Text('Ingrese la ubicacion de la sucursal:'),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Direccion',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Ingrese foto de referencia (Opcional):'),
              Expanded(
                child: FlatButton(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    onPressed: () {},
                    child: const Icon(
                      Icons.add_circle_outline_outlined,
                      size: 60,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
              ),
              RaisedButton(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                color: Colors.redAccent,
                child: const Text('Continuar',
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ),
            ],
          ),
        ),
        Column(
          children: [
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 105),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Añadir estacionamiento',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 109),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Añadir sala de reunion',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 102),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Añadir puesto de trabajo',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        )
      ],
    ),
  );
}
