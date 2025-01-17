import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenDesignUsePersonalFont extends StatelessWidget {
  const ScreenDesignUsePersonalFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Fonts',
          style: GoogleFonts.raleway(), // AppBar usa Raleway
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Icono de retroceso
          onPressed: () {
            Navigator.pop(context); // Navega a la pantalla anterior
          },
        ),
      ),
      body: Center(
        child: Text(
          'Roboto Mono sample',
          style: GoogleFonts.robotoMono(fontSize: 20), // Texto usa Roboto Mono
        ),
      ),
    );
  }
}