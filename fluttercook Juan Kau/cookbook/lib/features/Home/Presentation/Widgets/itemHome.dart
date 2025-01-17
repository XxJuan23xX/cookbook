import 'package:flutter/material.dart';

class ItemHome extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const ItemHome({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Espaciado uniforme
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.blueAccent.withOpacity(0.3), // Efecto de toque
        child: Ink(
          width: 100, // Tamaño fijo para hacerlo cuadrado
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF6DD5FA), Color(0xFF338FAD)], // Degradado
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8), // Bordes ligeramente redondeados
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 32,
                color: Colors.white, // Color del ícono
              ),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
