import 'package:flutter/material.dart';

class ScreenLongLists extends StatelessWidget {
  const ScreenLongLists({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(10000, (i) => 'Item $i');
    const title = 'Long List';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
