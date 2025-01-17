import 'package:flutter/foundation.dart';
import 'package:english_words/english_words.dart'; // Asegúrate de tener este paquete instalado

class MyAppState extends ChangeNotifier {
  // Palabra actual generada
  var current = WordPair.random();

  // Lista de palabras favoritas
  var favorites = <WordPair>[];

  // Método para generar una nueva palabra
  void getNext() {
    current = WordPair.random();
    notifyListeners(); // Notifica a los widgets que el estado cambió
  }

  // Método para añadir o eliminar la palabra actual de los favoritos
  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners(); // Actualiza la interfaz
  }
}
