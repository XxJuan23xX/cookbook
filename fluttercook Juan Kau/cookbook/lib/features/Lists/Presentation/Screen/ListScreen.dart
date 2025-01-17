import 'package:flutter/material.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Screen/ScreenGridList.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Widgets/itemList.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Screen/ScreenHorizontalList.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Screen/ScreenListWithTypes.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Screen/ScreenFloatingAppBar.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Screen/ScreenUseLists.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Screen/ScreenLongLists.dart';
import 'package:Fluttercookbook/features/Lists/Presentation/Screen/ScreenSpaceList.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Options'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ItemList(
            title: 'Grid List',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenGridList()),
              );
            },
          ),
          ItemList(
            title: 'Horizontal List',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenHorizontalList()),
              );
            },
          ),
          ItemList(
            title: 'List With Types',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenListWithTypes()),
              );
            },
          ),
          ItemList(
            title: 'Floating App Bar',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenFloatingAppBar(),
                ),
              );
            },
          ),
          ItemList(
            title: 'Use Lists',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenUseLists(),
                ),
              );
            },
          ),
          ItemList(
            title: 'Long Lists',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenLongLists(),
                ),
              );
            },
          ),
          ItemList(
            title: 'Space List',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenSpaceList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
