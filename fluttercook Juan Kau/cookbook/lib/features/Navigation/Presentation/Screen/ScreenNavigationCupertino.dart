import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ScreenNavigationCupertino extends StatelessWidget {
  const ScreenNavigationCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Navigation Basics',
      home: FirstRoute(), // FirstRoute será la primera página
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('First Route'),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            // Regresa a la pantalla anterior dentro del árbol del contexto principal
            Navigator.of(context, rootNavigator: true).pop(); // Use rootNavigator
          },
          child: const Icon(CupertinoIcons.back),
        ),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Second Route'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            Navigator.pop(context); // Vuelve a FirstRoute
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
