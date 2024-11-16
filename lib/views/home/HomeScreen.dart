// Main screen displayed after the Splash
import 'package:bm_esport_zone/views/register/RegisterScreen.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../login/LoginScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: composeBody(context)
    );
  }
}

// Cuerpo principal de la aplicación
Widget composeBody(BuildContext context){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        composeHeader(context),
        bodyDecorator(context)
      ],
    ),
  );
}

// Widget A
Widget composeHeader(BuildContext context){
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.45,
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/icon/logo.png'), // Ensure the image is in the assets folder
        ),
        SizedBox(height: 20),
        Text("Bienvenido/a, \n BM eSports Zone", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
        SizedBox(height: 25,),// Space between the logo and text
      ],
    ),
  );
}

Widget bodyDecorator(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.55,
    decoration: const BoxDecoration(
      color: Colors.deepPurple,
      borderRadius: BorderRadius.vertical(top: Radius.circular(25))
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            composeMain(context),
            composeFooter(context)
          ],
        ),
      ),
    ),
  );
}

// Widget B
Widget composeMain(BuildContext context){
  return Column(
    children: [
      const Text(
        'Nuestros servicios',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 18,),
      ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context){
                  return Wrap(children: [coffeInfo(context)]);
                }
            );
          },
          child: const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.coffee),
              SizedBox(width: 12,),
              Text("BM Coffe Zone")
            ],
          )
      ),
      const SizedBox(height: 12,),
      ElevatedButton(
          onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context){
                    return Wrap(children:[eSportSheet(context)]);
                  }
              );
          },
          child: const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.gamepad),
              SizedBox(width: 12,),
              Text("BM eSports Zone")
            ],
          )
      )
    ],
  );
}

// Widget C
Widget composeFooter(BuildContext context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.min,
    children: [
      const Text("Inicia sesión para disfrutar de nuestros productos, beneficios y mucho más.", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
      const SizedBox(height: 24,),
      FilledButton.tonal(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen())
            );
          },
          child: const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.login_outlined),
              SizedBox(width: 12,),
              Text("Iniciar Sesión"),
            ],
          )
      ),
      const SizedBox(height: 24,),
      TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Registerscreen()));
          },
          child: const Text("¿No tienes cuenta? Regístrate gratis", style: TextStyle(color: Colors.white70),)
      )
    ],
  );
}

Widget coffeInfo(BuildContext context){
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          children: [
            Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.334,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/game_coffee.jpg'),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))
              ),
            ),
            const Positioned(
                right: 16,
                bottom: 16,
                child: Text("BM Coffee Zone", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                )
            ),
          ]
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical:44),
              child: Text('Un refugio cálido donde cada taza de café y cada postre casero te invitan a desconectar. Diseñado para que te sientas como en casa, es el lugar perfecto para disfrutar de buena compañía, leer o simplemente consentirte con nuestras delicias.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget eSportSheet(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Column(
      mainAxisSize: MainAxisSize.min, // Ajustar el tamaño del modal al contenido
      children: [
        // Imagen en la parte superior
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/esport_zone.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          child: const Stack(
            children: [
              Positioned(
                right: 16,
                bottom: 16,
                child: Text(
                  "BM eSports Zone",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Contenido de texto
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Te ofrecemos un espacio para jugar, competir y conectar con otros apasionados del gaming. Ya sea que vengas solo o con amigos, el ambiente vibrante y acogedor te invita a vivir la adrenalina de los torneos o a disfrutar de partidas relajadas en un entorno pensado para ti.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 16), // Espaciado entre los textos
              Text(
                'Además, disfruta de nuestro servicio de comida y café, para que puedas recargar energías sin dejar de lado la emoción del juego. Tu pasión por los videojuegos tiene un hogar. ¡Conquista cada partida en BM eSportsZone!',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ],
    ),
  );
}
