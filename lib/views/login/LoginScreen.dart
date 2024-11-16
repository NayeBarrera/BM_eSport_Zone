// Login Screen
import 'package:flutter/material.dart';

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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