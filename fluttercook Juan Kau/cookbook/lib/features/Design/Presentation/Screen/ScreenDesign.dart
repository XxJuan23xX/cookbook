import 'package:flutter/material.dart';
import 'package:Fluttercookbook/features/Design/Presentation/Screen/ScreenDrawers.dart';
import 'package:Fluttercookbook/features/Design/Presentation/Widgets/itemDesign.dart';
import 'package:Fluttercookbook/features/Design/Presentation/Screen/ScreenDesignSnackBar.dart'; 
import 'package:Fluttercookbook/features/Design/Presentation/Screen/ScreenDesignUsingThemes.dart';
import 'package:Fluttercookbook/features/Design/Presentation/Screen/ScreenUpdateTheUI.dart';
import 'package:Fluttercookbook/features/Design/Presentation/Screen/ScreenDesignUsePersonalFont.dart';
import 'package:Fluttercookbook/features/Design/Presentation/Screen/ScreenDesignWithTabs.dart';

class ScreenDesign extends StatelessWidget {
  const ScreenDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design Options'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ItemDesign(
            title: 'Drawer Demo',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenDrawers(),
                ),
              );
            },
          ),
          ItemDesign(
            title: 'SnackBar Demo',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenDesignSnackBar(),
                ),
              );
            },
          ),
          ItemDesign(
            title: 'Orientation Demo',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenUpdateTheUI(),
                ),
              );
            },
          ),
          ItemDesign(
            title: 'Use Google Fonts',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenDesignUsePersonalFont(),
                ),
              );
            },
          ),
          ItemDesign(
            title: 'Using Themes Demo',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenDesignUsingThemes(),
                ),
              );
            },
          ),
          ItemDesign(
            title: 'Tabs Demo',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenDesignWithTabs(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
