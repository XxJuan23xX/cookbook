import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Fade In Web Images';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: <Widget>[
          // Indicador de carga en el centro mientras la imagen se carga
          const Center(
            child: CircularProgressIndicator(),
          ),
          // Imagen con FadeIn
          Center(
            child: FadeInImage.assetNetwork(
  placeholder: 'lib/assets/loading.gif',
  image: 'https://picsum.photos/250?image=9',
),
          ),
        ],
      ),
    );
  }
}
