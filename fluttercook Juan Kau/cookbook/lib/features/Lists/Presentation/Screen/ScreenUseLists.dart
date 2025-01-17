import 'package:flutter/material.dart';

class ScreenUseLists extends StatelessWidget {
  const ScreenUseLists({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
