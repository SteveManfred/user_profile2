import 'package:flutter/material.dart';

const rojoPrincipal = Color.fromARGB(255, 227, 74, 74);
const rojoSecundario = Color.fromARGB(255, 231, 189, 189);

class Editsucursales2 extends StatelessWidget {
  const Editsucursales2({Key? key}) : super(key: key);

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
        title: const Text("RESERVAS"),
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
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 30),
                _boton("Sucursal", "Sucursal"),
                const SizedBox(height: 15),
                _Eleccion("Providencia", "",
                    "https://newses.cgtn.com/n/BfJAA-CIA-HAA/BHJdDAA.jpg"),
                const SizedBox(height: 15),
                _Eleccion("Las Condes", "",
                    "https://media-cdn.tripadvisor.com/media/photo-s/0d/9b/3a/d4/getlstd-property-photo.jpg"),
                const SizedBox(height: 15),
                _Eleccion("San Bernardo", "",
                    "https://newses.cgtn.com/n/BfJAA-CIA-HAA/BHJdDAA.jpg"),
                const SizedBox(height: 15),
                _2boton("Tipo de Reserva", "Tipo de Reserva"),
                const SizedBox(height: 15),
                _2boton("Calendario", "Calendario"),
                const SizedBox(height: 15),
                _BotonContinuar("Continuar", "Calendario"),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _boton(String texto, String pagina) {
  return ButtonTheme(
    minWidth: 300.0,
    height: 30.0,
    child: RaisedButton(
      child: Text(
        texto,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
      color: rojoPrincipal,
      elevation: 10,
      padding: const EdgeInsets.all(20),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      onPressed: () => {
        /* No funciona la ruta
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const ReservaSucursales())
        ) */
        // ignore: avoid_print
        print("BOTON: " + texto + " y redirecciona a pagina: " + pagina)
      },
    ),
  );
}

Widget _2boton(String texto, String pagina) {
  return ButtonTheme(
    minWidth: 300.0,
    height: 30.0,
    child: RaisedButton(
      child: Text(
        texto,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
      ),
      color: rojoSecundario,
      elevation: 10,
      padding: const EdgeInsets.all(20),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      onPressed: () => {
        /* No funciona la ruta
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const ReservaSucursales())
        ) */
        // ignore: avoid_print
        print("BOTON: " + texto + " y redirecciona a pagina: " + pagina)
      },
    ),
  );
}

Widget _BotonContinuar(String texto, String pagina) {
  return ButtonTheme(
    minWidth: 100.0,
    height: 20.0,
    child: RaisedButton(
      child: Text(
        texto,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
      ),
      color: rojoSecundario,
      elevation: 10,
      padding: const EdgeInsets.all(20),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      onPressed: () => {
        /* No funciona la ruta
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const ReservaSucursales())
        ) */
        // ignore: avoid_print
        print("BOTON: " + texto + " y redirecciona a pagina: " + pagina)
      },
    ),
  );
}

Widget _Eleccion(String texto, String pagina, String url) {
  return Container(
      width: 250.0,
      height: 150.0,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 227, 205, 205),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        children: <Widget>[
          Text(texto,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17)),
          Text(""),
          FlatButton(
              onPressed: () => {
                    print("BOTON: " +
                        texto +
                        " y redirecciona a pagina: " +
                        pagina)
                  },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                child: Image(
                  image: NetworkImage(
                    url,
                  ),
                  width: 90,
                  height: 90,
                  fit: BoxFit.fill,
                ),
              ))
        ],
      ));
}
