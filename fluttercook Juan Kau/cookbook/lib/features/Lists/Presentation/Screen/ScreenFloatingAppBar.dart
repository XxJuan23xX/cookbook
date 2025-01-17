import 'package:flutter/material.dart';

class ScreenFloatingAppBar extends StatelessWidget {
  const ScreenFloatingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar
          const SliverAppBar(
            title: Text(title),
            floating: true,
            flexibleSpace: Placeholder(),
            expandedHeight: 200,
          ),
          // SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('Item #$index'),
              ),
              childCount: 1000, // Número de elementos en la lista
            ),
          ),
        ],
      ),
    );
  }
}
