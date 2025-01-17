import 'package:flutter/material.dart';

class ScreenNavigationWithRoutes extends StatelessWidget {
  const ScreenNavigationWithRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Botón de retroceso
          onPressed: () {
            // Regresa a la pantalla anterior en caso de existir, o cierra la aplicación.
            if (Navigator.canPop(context)) {
              Navigator.of(context).pop();
            } else {
              Navigator.of(context, rootNavigator: true).pop();
            }
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Vuelve a FirstScreen
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
