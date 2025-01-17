import 'package:flutter/material.dart';

class ScreenUpdateTheUI extends StatelessWidget {
  const ScreenUpdateTheUI({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Orientation Demo';

    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Dos columnas en modo retrato y tres en modo paisaje.
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            // Generar 100 widgets que muestren su índice.
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
