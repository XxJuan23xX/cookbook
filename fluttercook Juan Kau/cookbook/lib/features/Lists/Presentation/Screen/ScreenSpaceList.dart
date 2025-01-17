import 'package:flutter/material.dart';

class ScreenSpaceList extends StatelessWidget {
  const ScreenSpaceList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 4;

    return MaterialApp(
      title: 'Spaced Items List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardTheme: CardTheme(color: Colors.blue.shade50),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Spaced Items List'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Ícono de retroceso
            onPressed: () {
              Navigator.pop(context); // Volver a la pantalla anterior
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                    items,
                    (index) => ItemWidget(text: 'Item $index'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardTheme.color, // Aplicar el color del tema
      child: SizedBox(
        height: 100,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge, // Aplicar el estilo del tema
          ),
        ),
      ),
    );
  }
}
