import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../MyAppState.dart';
import '../Widgets/BigCard.dart';
import '../Widgets/itemFavorite.dart';

class GeneratorScreen extends StatefulWidget {
  const GeneratorScreen({super.key});

  @override
  State<GeneratorScreen> createState() => _GeneratorScreenState();
}

class _GeneratorScreenState extends State<GeneratorScreen> {
  int selectedIndex = 1; // Inicia en Word Generator

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    Widget page;
    switch (selectedIndex) {
      case 0: // Redirige al Home
        Navigator.pushReplacementNamed(context, '/');
        page = SizedBox.shrink();
        break;
      case 1:
        page = GeneratorView(appState: appState);
        break;
      case 2:
        page = FavoritesView(appState: appState);
        break;
      default:
        throw UnimplementedError('No widget for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.text_fields),
                      label: Text('Word Generator'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('Favorites'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                    onDestinationSelected: (value) {
                      if (value == 0) {
                        Navigator.popUntil(context, ModalRoute.withName('/'));
                      } else {
                        setState(() {
                          selectedIndex = value;
                        });
                      }
                    },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class GeneratorView extends StatelessWidget {
  final MyAppState appState;

  const GeneratorView({super.key, required this.appState});

  @override
  Widget build(BuildContext context) {
    var pair = appState.current;

    IconData icon = appState.favorites.contains(pair)
        ? Icons.favorite
        : Icons.favorite_border;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FavoritesView extends StatelessWidget {
  final MyAppState appState;

  const FavoritesView({super.key, required this.appState});

  @override
  Widget build(BuildContext context) {
    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        for (var pair in appState.favorites)
          ItemFavorite(pair: pair),
      ],
    );
  }
}
