import 'package:flutter/material.dart';

class ReservaSalasReunion extends StatelessWidget {
  const ReservaSalasReunion({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => print('boton menu'),
              );
            },
          ),
          title: const Center(
            child: Text('Reservas'),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.mail, size: 35),
              onPressed: () => print('boton mensajes'),
            ),
          ],
        ),

//separado

        body: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 4 / 8.3,
          children: <Widget>[
            Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => print('boton reportes'),
                      color: Colors.redAccent,
                      child: const Text('Sucursal',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 125),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => print('boton reportes'),
                      color: Colors.redAccent,
                      child: const Text('Tipo de sucursal',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => print('boton reportes'),
                      color: const Color.fromARGB(255, 255, 197, 197),
                      child: const Text('Sala de reuniones',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    Card(
                      child: Center(
                        child: Container(
                          width: 300,
                          height: 250,
                          child: const Text('Calendario'),
                          margin: const EdgeInsets.all(30),
                          padding: const EdgeInsets.fromLTRB(110, 20, 20, 20),
                          color: const Color.fromARGB(255, 255, 117, 117),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('     Día'),
                        Text('Mes'),
                        Text('Año     ')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () => print('boton volver'),
                          color: Colors.redAccent,
                          child: const Text('13',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () => print('boton volver'),
                          color: Colors.redAccent,
                          child: const Text('Abril',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () => print('boton volver'),
                          color: Colors.redAccent,
                          child: const Text('2022',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Desde   '),
                        Text('   Hasta'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {
                            print('Dia');
                          },
                          color: Colors.redAccent,
                          child: const Text('9:30',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () => print('boton volver'),
                          color: Colors.redAccent,
                          child: const Text('10:30',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => print('boton reportes'),
                      color: Colors.redAccent,
                      child: const Text('Oficina 8 per.          6/8',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => print('boton reportes'),
                      color: Colors.redAccent,
                      child: const Text('Oficina 10 per.      3/10',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    FlatButton(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => print('boton reportes'),
                      color: const Color.fromARGB(255, 243, 46, 46),
                      child: const Text('Reservar',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
