import 'package:flutter/material.dart';

class FruitDetailScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String classification;
  final String weight;
  final String color;
  final String uses;

  const FruitDetailScreen({
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
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(description),
              const SizedBox(height: 8),
              Text('Clasificación: $classification'),
              Text('Peso promedio: $weight'),
              Text('Color: $color'),
              Text('Usos: $uses'),
            ],
          ),
        ),
      ),
    );
  }
}
