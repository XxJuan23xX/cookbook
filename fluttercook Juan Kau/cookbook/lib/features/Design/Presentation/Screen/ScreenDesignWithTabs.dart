import 'package:flutter/material.dart';

class ScreenDesignWithTabs extends StatelessWidget {
  const ScreenDesignWithTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs Demo'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Botón de retroceso
            onPressed: () {
              Navigator.pop(context); // Navega a la pantalla anterior
            },
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
