import 'package:flutter/material.dart';
import 'dart:async'; // Necesario para el temporizador

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BM eSport Zone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // Mostramos primero el Splash Screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Temporizador para mostrar el splash screen por 3 segundos
    Timer(const Duration(seconds: 3), () {
      // Navegamos a la pantalla principal
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'BM',
              style: TextStyle(
                color: Colors.white, // Texto blanco
                fontSize: 50, // Tamaño grande para "BM"
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'eSport Zone',
              style: TextStyle(
                color: Colors.white, // Texto blanco
                fontSize: 30, // Tamaño más pequeño para "eSport Zone"
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla Principal que se muestra después del Splash
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo de BM (puedes reemplazar esto con una imagen)
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/logo.png'), // Asegúrate de tener la imagen en la carpeta assets
            ),
            const SizedBox(height: 20), // Espacio entre el logo y el texto

            const Text(
              'HOLA, BIENVENIDO/A\nBM eSports Zone',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40), // Espacio entre el texto y los botones

           // Botón BM CaféZone
            ElevatedButton.icon(
              onPressed: () {
                // Mostramos el diálogo con la descripción de BM CaféZone
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.black,
                      title: const Text(
                        "BM CaféZone",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: const Text(
                        'Bienvenido a BM CaféZone, un refugio cálido donde cada\n'
                        'taza de café y cada postre casero te invitan a desconectar.\n'
                        'Diseñado para que te sientas como en casa, es el lugar\n'
                        'perfecto para disfrutar de buena compañía, leer o \n'
                        'simplemente consentirte con nuestras delicias.',
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        TextButton(
                          child: const Text("Cerrar", style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              
              icon: const Icon(Icons.local_cafe, color: Colors.black),
              label: const Text(
                'BM CaféZone',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20), // Espacio entre los botones

            // Botón BM eSportsZone
            ElevatedButton.icon(
              onPressed: () {
                // Mostramos el diálogo con la descripción de BM eSportsZone
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.black,
                      title: const Text(
                        "BM eSportsZone",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: const Text(
                        'Ven y disfruta en BM eSportsZone, donde te ofrecemos un espacio\n'
                        'para jugar, competir y conectar con otros apasionados del gaming.\n'
                        'Ya sea que vengas solo o con amigos, el ambiente vibrante y acogedor\n'
                        'te invita a vivir la adrenalina de los torneos o a disfrutar de\n'
                        'partidas relajadas en un entorno pensado para ti.\n\n'
                        'Además, disfruta de nuestro servicio de comida y café, para que\n'
                        'puedas recargar energías sin dejar de lado la emoción del juego.\n\n'
                        'Tu pasión por los videojuegos tiene un hogar.\n'
                        '¡Conquista cada partida en BM eSportsZone!',
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        TextButton(
                          child: const Text("Cerrar", style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.sports_esports, color: Colors.black),
              label: const Text(
                'BM eSportsZone',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
