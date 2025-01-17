import 'package:flutter/material.dart';
import 'package:Fluttercookbook/features/Navigation/Presentation/Screen/ScreenNavigationCupertino.dart';
import 'package:Fluttercookbook/features/Navigation/Presentation/Widgets/itemNavigation.dart';

class ScreenNavigationToBack extends StatelessWidget {
  const ScreenNavigationToBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Options'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Botón de retroceso
          onPressed: () {
            Navigator.pop(context); // Vuelve a la pantalla anterior
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ItemNavigation(
            title: 'Cupertino Navigation',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenNavigationCupertino(),
                ),
              );
            },
          ),
          // Aquí puedes agregar más opciones de navegación
        ],
      ),
    );
  }
}
