import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ItemFavorite extends StatelessWidget {
  final WordPair pair;

  const ItemFavorite({required this.pair, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.favorite, color: Colors.red),
      title: Text(pair.asLowerCase),
    );
  }
}
