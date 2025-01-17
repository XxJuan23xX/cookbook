import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

class ScreenDesignExportFonts extends StatelessWidget {
  const ScreenDesignExportFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Fonts'),
      ),
      body: Center(
        child: Text(
          'Using the Raleway font via Google Fonts package',
          style: GoogleFonts.raleway(
            fontSize: 18, 
            fontWeight: FontWeight.w400, 
          ),
        ),
      ),
    );
  }
}