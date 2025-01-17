import 'package:flutter/material.dart';
import 'package:Fluttercookbook/core/themes/app_theme.dart';
import 'package:provider/provider.dart';
import 'features/Home/Presentation/Screen/Home.dart';
import 'features/FavoriteWords/Presentation/Screen/GeneratorScreen.dart';
import 'features/Imagess/Presentation/Screen/images.dart';
import 'features/Lists/Presentation/Screen/ListScreen.dart';
import 'features/Design/Presentation/Screen/ScreenDesign.dart';
import 'features/Navigation/Presentation/Screen/ScreenNavigation.dart';
import 'features/MyAppState.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Flutter Cookbook',
        theme: AppThemes.lightTheme, // Tema claro definido en AppThemes
        darkTheme: AppThemes.darkTheme, // Tema oscuro definido en AppThemes
        themeMode: ThemeMode.system, // Cambia automáticamente según el sistema (opcional)
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
          '/generator': (context) => const GeneratorScreen(),
          '/images': (context) => const Images(),
          '/list': (context) => const ListScreen(),
          '/design': (context) => const ScreenDesign(),
          '/navigation': (context) => const ScreenNavigation(),
        },
      ),
    );
  }
}
