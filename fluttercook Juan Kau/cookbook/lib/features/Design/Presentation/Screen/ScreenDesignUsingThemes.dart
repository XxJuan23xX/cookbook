import 'package:flutter/material.dart';
class ScreenDesignUsingThemes extends StatelessWidget {
  const ScreenDesignUsingThemes({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'Custom Themes';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appName,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Botón de retroceso
          onPressed: () {
            Navigator.pop(context); // Navega hacia atrás
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          color: Theme.of(context).colorScheme.primary,
          child: Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pink,
            brightness: Brightness.dark,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
