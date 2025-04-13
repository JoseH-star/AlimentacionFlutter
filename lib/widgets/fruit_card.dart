import 'package:flutter/material.dart';
import '../screens/fruit_detail_screen.dart';

class FruitCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String classification;
  final String weight;
  final String color;
  final String uses;

  const FruitCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.classification,
    required this.weight,
    required this.color,
    required this.uses,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FruitDetailScreen(
              imagePath: imagePath,
              title: title,
              description: description,
              classification: classification,
              weight: weight,
              color: color,
              uses: uses,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imagePath,
                height: 120, // Aumenté un poco la altura
                width: double.infinity,
                fit: BoxFit.contain, // Cambiado de cover a contain para que no corte
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
