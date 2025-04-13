import 'package:flutter/material.dart';
import '../widgets/fruit_card.dart';
import 'package:flutter_application_2/screens/fruit_detail_screen.dart'; // Asegúrate de tener el import correcto

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  // Lista de frutas
  final List<Map<String, String>> fruits = [
        {
          'imagePath': 'assets/manzana.png',
          'title': 'Manzana',
          'description': 'Las manzanas son conocidas por ser una buena fuente...',
          'classification': 'Fruta pomácea...',
          'weight': '150-250 gramos',
          'color': 'Rojo, verde y amarillo',
          'uses': 'Consumo crudo, cocido...',
        },
        {
          'imagePath': 'assets/banano.png',
          'title': 'Banano',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/mango.png', 
          'title': 'Mango',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/maracuya.png', 
          'title': 'Maracuya',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/pera.png', 
          'title': 'Pera',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/naranja.png', 
          'title': 'Naranja',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/uvas.png', 
          'title': 'uvas',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/mora.png', 
          'title': 'Mora',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/kiwi.png', 
          'title': 'Kiwi',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/sandia.png', 
          'title': 'Sandia',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
           
        {
          'imagePath': 'assets/piña.png', 
          'title': 'Piña',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
           
        {
          'imagePath': 'assets/Ciruelas.png', 
          'title': 'Ciruelas',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
        {
          'imagePath': 'assets/Frutos_rojos.png', 
          'title': 'Frutos Rojos',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
           
        {
          'imagePath': 'assets/Papaya.png', 
          'title': 'Papaya',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
           
        {
          'imagePath': 'assets/Higo.png', 
          'title': 'Higo',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },   
        {
          'imagePath': 'assets/Granada.png', 
          'title': 'Granada',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },   
        {
          'imagePath': 'assets/Grosella.png', 
          'title': 'Grosella',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },
           
        {
          'imagePath': 'assets/Mandarina.png', 
          'title': 'Mandarina',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },   
        {
          'imagePath': 'assets/Coco.png', 
          'title': 'Coco',
          'description': 'Los bananos son una excelente fuente de potasio...',
          'classification': 'Fruta tropical...',
          'weight': '120-150 gramos',
          'color': 'Amarillo',
          'uses': 'Consumo crudo...',
        },

  ];

  @override
  Widget build(BuildContext context) {
    // Filtramos la lista según la búsqueda
    final filteredFruits = fruits.where((fruit) {
      final title = fruit['title']!.toLowerCase();
      final query = _searchText.toLowerCase();
      return title.contains(query);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Información de Frutas'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 🔍 Buscador estático
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Buscar fruta...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),

          // 🧩 Lista de frutas en expansión
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columnas
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8, // Relación de aspecto de la tarjeta
              ),
              itemCount: filteredFruits.length,
              itemBuilder: (context, index) {
                final fruit = filteredFruits[index];
                return FruitCard(
                  imagePath: fruit['imagePath']!,
                  title: fruit['title']!,
                  description: fruit['description']!,
                  classification: fruit['classification']!,
                  weight: fruit['weight']!,
                  color: fruit['color']!,
                  uses: fruit['uses']!,
                );
              },
            ),
          ),
        ],
      ),


        
       // Barra de navegación inferior con íconos
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
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
        onTap: (index) {
          // Aquí puedes agregar navegación según el index
          if (index == 1) {
            // Ya estás en Home
          }
        },
      ),
    );
  }
}
  