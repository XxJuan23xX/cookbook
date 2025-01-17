import 'package:flutter/material.dart';
import '../Widgets/itemHome.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Juan Cookbook',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF338FAD),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16.0),
        crossAxisCount: 2, // Dos columnas para escorar los botones a los lados
        mainAxisSpacing: 16, // Espaciado entre filas
        crossAxisSpacing: 16, // Espaciado entre columnas
        children: [
          ItemHome(
            title: 'Images',
            icon: Icons.image,
            onTap: () {
              Navigator.pushNamed(context, '/images');
            },
          ),
          ItemHome(
            title: 'List',
            icon: Icons.list,
            onTap: () {
              Navigator.pushNamed(context, '/list');
            },
          ),
          ItemHome(
            title: 'Design',
            icon: Icons.design_services,
            onTap: () {
              Navigator.pushNamed(context, '/design');
            },
          ),
          ItemHome(
            title: 'Navigation',
            icon: Icons.navigation,
            onTap: () {
              Navigator.pushNamed(context, '/navigation');
            },
          ),
          ItemHome(
            title: 'Favorite Words',
            icon: Icons.text_fields,
            onTap: () {
              Navigator.pushNamed(context, '/generator');
            },
          ),
        ],
      ),
    );
  }
}
