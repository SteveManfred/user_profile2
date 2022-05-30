import 'package:flutter/material.dart';

const rojoPrincipal = Color.fromARGB(255, 227, 74, 74);

class Editsucursales4 extends StatefulWidget {
  const Editsucursales4({Key? key}) : super(key: key);

  @override
  State<Editsucursales4> createState() => _Editsucursales4State();
}

class _Editsucursales4State extends State<Editsucursales4> {
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
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 103),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Añadir Estacionamiento',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(40),
          width: 400,
          height: 500,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(40),
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 199, 199),
                    border: Border.all(
                        color: const Color.fromRGBO(0, 0, 0, 0.259), width: 4),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: const [
                    Text('VIP',
                        style: TextStyle(
                            fontSize: 14, color: Color.fromARGB(255, 0, 0, 0))),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 199, 199),
                    border: Border.all(
                        color: const Color.fromRGBO(0, 0, 0, 0.259), width: 4),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: const [
                    Text('Colaboradores',
                        style: TextStyle(
                            fontSize: 14, color: Color.fromARGB(255, 0, 0, 0))),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 199, 199),
                    border: Border.all(
                        color: const Color.fromRGBO(0, 0, 0, 0.259), width: 4),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: const [],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
