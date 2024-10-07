import 'package:flutter/material.dart';
import 'dart:async'; // Necessary for the timer

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
      home: const SplashScreen(), // First show the Splash Screen
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
    // Timer to show the splash screen for 3 seconds
    Timer(const Duration(seconds: 3), () {
      // Navigate to the main screen
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
      backgroundColor: Colors.black, // Black background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'BM',
              style: TextStyle(
                color: Colors.white, // White text
                fontSize: 50, // Large size for "BM"
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'eSport Zone',
              style: TextStyle(
                color: Colors.white, // White text
                fontSize: 30, // Smaller size for "eSport Zone"
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Main screen displayed after the Splash
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
            // BM Logo (you can replace this with an image)
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/logo.png'), // Ensure the image is in the assets folder
            ),
            const SizedBox(height: 20), // Space between the logo and text

            const Text(
              'HOLA, BIENVENIDO/A\nBM eSports Zone',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40), // Space between text and buttons

            // BM CaféZone Button
            ElevatedButton.icon(
              onPressed: () {
                // Show a dialog with BM CaféZone description
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
            const SizedBox(height: 20), // Space between buttons

            // BM eSportsZone Button
            ElevatedButton.icon(
              onPressed: () {
                // Show a dialog with BM eSportsZone description
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
            const SizedBox(height: 40), // Additional space

            const Text(
              'Ingresa para disfrutar de nuestros productos, beneficios y mucho más.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20), // Space between text and button

            // ENTER Button
            ElevatedButton(
              onPressed: () {
                // Navigate to login screen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'INGRESAR',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'BIENVENIDO/A BM eSports Zone',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Inicia sesión',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),

            // Username Field
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Colors.white),
                hintText: 'Usuario',
                hintStyle: const TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.purpleAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),

            // Campo de Contraseña
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: Colors.white),
                hintText: 'Contraseña',
                hintStyle: const TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.purpleAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),

            // Botón de Registro
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción para registrar o iniciar sesión
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Regístrate YA!',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Redes sociales (íconos)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.facebook, color: Colors.purpleAccent, size: 40),
                SizedBox(width: 20),
                Icon(Icons.email, color: Colors.purpleAccent, size: 40),
                SizedBox(width: 20),
                Icon(Icons.camera_alt, color: Colors.purpleAccent, size: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}