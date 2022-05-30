import 'package:flutter/material.dart';

const rojoPrincipal = Color.fromARGB(255, 227, 74, 74);

class Editsucursales0 extends StatelessWidget {
  const Editsucursales0({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(horizontal: 150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Sucursal',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Tipo de reserva',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 144),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.redAccent,
              child: const Text('Calendario',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(20),
          width: 250,
          height: 130,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 199, 199),
              border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 0.259), width: 4),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  const Text('Leer QR'),
                  Expanded(
                    child: FlatButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.qr_code_scanner_outlined,
                          size: 50,
                        )),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('Reportar'),
                  Expanded(
                    child: FlatButton(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10, 10, 10, 10),
                        onPressed: () {},
                        child: const Icon(
                          Icons.report,
                          size: 60,
                          color: Colors.amber,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 340,
          height: 230,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 199, 199),
              border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 0.259), width: 4),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Reservas'),
              FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chair_sharp),
                      onPressed: () {},
                      iconSize: 20,
                    ),
                    const Text(
                      '19/34',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.question_mark_outlined),
                      onPressed: () {},
                      iconSize: 20,
                    ),
                    const Icon(
                      Icons.delete,
                      size: 20,
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.directions_car_filled_sharp),
                      onPressed: () {},
                      iconSize: 20,
                    ),
                    const Text(
                      '19/34',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.question_mark_outlined),
                      onPressed: () {},
                      iconSize: 20,
                    ),
                    const Icon(
                      Icons.delete,
                      size: 20,
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.directions_car_filled_sharp),
                      onPressed: () {},
                      iconSize: 20,
                    ),
                    const Text(
                      '19/34',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.question_mark_outlined),
                      onPressed: () {},
                      iconSize: 20,
                    ),
                    const Icon(
                      Icons.delete,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
