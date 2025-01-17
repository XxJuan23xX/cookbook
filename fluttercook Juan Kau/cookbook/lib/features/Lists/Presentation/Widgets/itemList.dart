import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ItemList({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.blueAccent.withOpacity(0.3), // Efecto de toque
        child: Ink(
          height: 80, // Altura fija para un diseño consistente
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF6DD5FA), Color(0xFF338FAD)], // Degradado
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12), // Bordes redondeados
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(2, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 16), // Espaciado izquierdo
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios, // Ícono de flecha
                color: Colors.white,
              ),
              const SizedBox(width: 16), // Espaciado derecho
            ],
          ),
        ),
      ),
    );
  }
}
