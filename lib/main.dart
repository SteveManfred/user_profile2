import 'package:flutter/material.dart';
import 'package:user_profile2/pages/edit_sucursales2.dart';

//************************ Admin Imports ***********************

//************************ User Imports ***********************

import 'package:user_profile2/pages/reserva_sala_reunion.dart';
import 'package:user_profile2/pages/edit_sucursales0.dart';
import 'package:user_profile2/pages/edit_sucursales2.dart';
import 'package:user_profile2/pages/edit_sucursales3.dart';
import 'package:user_profile2/pages/edit_sucursales4.dart';

//************************* Main *******************************
const rojoPrincipal = Color.fromARGB(255, 227, 74, 74);
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sucursales App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reservas Mockups"),
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
      drawer: const Drawer(
        backgroundColor: rojoPrincipal,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomButton(
                    inputText: "Reserva Reunion (User)",
                    pagina: ReservaSalasReunion()),
                SizedBox(height: 15),
                CustomButton(
                    inputText: "Editar Sucursal Mio1 (Admin)",
                    pagina: Editsucursales0()),
                SizedBox(height: 15),
                CustomButton(
                    inputText: "Editar Sucursal Mio2 (Admin)",
                    pagina: Editsucursales2()),
                SizedBox(height: 15),
                CustomButton(
                    inputText: "Editar Sucursal Mio3 (Admin)",
                    pagina: Editsucursales3()),
                SizedBox(height: 15),
                CustomButton(
                    inputText: "Editar Sucursal Mio4 (Admin)",
                    pagina: Editsucursales4()),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  final String inputText;
  final Widget pagina;

  // ignore: use_key_in_widget_constructors
  const CustomButton({required this.inputText, required this.pagina});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: rojoPrincipal,
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget.pagina,
              ));
          // ignore: avoid_print
          print("BOTON: ${widget.inputText}");
        },
        child: Text(
          widget.inputText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
