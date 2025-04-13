import 'package:flutter/material.dart';
import 'home_screen.dart'; // Pantalla de información de frutas

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Cuerpo principal de la pantalla
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Título de la página
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Alimentación',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),


               // Carrusel de texto motivacional
            SizedBox(
              height: 80,
              child: PageView(
                children: const [
                  Center(
                    child: Text(
                      '"La tranquilidad comienza con una buena alimentación."',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
                  ),
                  Center(
                    child: Text(
                      '"Cuida tu cuerpo, es el único lugar donde tienes que vivir."',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
                  ),
                  Center(
                    child: Text(
                      '"Cada pequeño paso hacia una mejor alimentación es un gran paso hacia tu bienestar."',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Carrusel de tarjetas
            SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildCard(
                    context,
                    imagePath: 'assets/manzana.png',
                    title: 'Información Frutas',
                    description:
                        'Conoce cómo ciertos alimentos influyen en tu salud y bienestar.',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  _buildCard(
                    context,
                    imagePath: 'assets/banano.png',
                    title: 'Seguimiento de proceso',
                    description:
                        'Monitorea tu progreso y establece metas saludables.',
                    onTap: () {
                      // Aquí más adelante podemos poner la ruta de seguimiento
                    },
                  ),
                  const SizedBox(width: 16),
                  _buildCard(
                    context,
                    imagePath: 'assets/banano.png',
                    title: 'Foro',
                    description:
                        'Comparte experiencias y consejos con la comunidad.',
                    onTap: () {
                      // Aquí más adelante podemos poner la ruta del foro
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Módulo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Usuario',
          ),
        ],
        currentIndex: 1, // Index de inicio seleccionado
        onTap: (index) {
          // Aquí puedes manejar la navegación según el índice seleccionado
        },
      ),
    );
  }

  // Método privado para construir las tarjetas
  Widget _buildCard(BuildContext context,
      {required String imagePath,
      required String title,
      required String description,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                imagePath,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
