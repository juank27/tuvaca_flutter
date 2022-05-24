import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //titulos
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Comercialización de bovinos en Ubaté.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Contactanos aca !!',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.arrow_downward_sharp,
            color: Color.fromARGB(219, 0, 131, 33),
          )
        ],
      ),
    );

    Color color = const Color.fromARGB(219, 0, 131, 33);
    // iconos de boton
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Telefono'),
        _buildButtonColumn(color, Icons.email, 'Email'),
        _buildButtonColumn(color, Icons.chat, 'Mensaje'),
      ],
    );
    //texto informativo
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Todas las personas de la provincia interesadas en comprar o vender podrán registrarse, para publicar el bovino que dese vender y ofertarlo para los 10 municipios de la provincia y también podrá buscar a través de una búsqueda filtrada y distintas categorías',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'tuVaca',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('tuVaca'),
          backgroundColor: Color.fromARGB(219, 0, 131, 33),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/vacas.png',
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection, //titulo
            buttonSection, // iconos de botones
            textSection, // texto informativo
            Image.asset(
              'images/logo2.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
