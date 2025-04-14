import 'package:flutter/material.dart';

class WellnessTestScreen extends StatefulWidget {
  const WellnessTestScreen({super.key});

  @override
  State<WellnessTestScreen> createState() => _WellnessTestScreenState();
}

class _WellnessTestScreenState extends State<WellnessTestScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controladores para campos de texto
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController edadController = TextEditingController();

  // Variables para los dropdowns
  String? sexo;
  String? complexion;
  String? actividad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test de Bienestar'),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          // Fondo con imagen tranquila
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Fondo_Test.png'), // No olvides tener esta imagen en tus assets
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Contenido con scroll
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Datos Básicos del Usuario',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Color del texto para que resalte
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          blurRadius: 4,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Peso
                  _buildTextField(
                    controller: pesoController,
                    label: 'Peso actual (kg)',
                  ),

                  const SizedBox(height: 12),

                  // Altura
                  _buildTextField(
                    controller: alturaController,
                    label: 'Altura (cm)',
                  ),

                  const SizedBox(height: 12),

                  // Edad
                  _buildTextField(
                    controller: edadController,
                    label: 'Edad',
                  ),

                  const SizedBox(height: 12),

                  // Selección de sexo
                  _buildDropdown(
                    value: sexo,
                    label: 'Sexo',
                    items: const ['Masculino', 'Femenino'],
                    onChanged: (value) => setState(() => sexo = value),
                  ),

                  const SizedBox(height: 12),

                  // Selección de complexión
                  _buildDropdown(
                    value: complexion,
                    label: 'Complexión',
                    items: const ['Delgada', 'Media', 'Robusta'],
                    onChanged: (value) => setState(() => complexion = value),
                  ),

                  const SizedBox(height: 12),

                  // Selección de actividad
                  _buildDropdown(
                    value: actividad,
                    label: 'Nivel de actividad',
                    items: const ['Bajo', 'Moderado', 'Alto'],
                    onChanged: (value) => setState(() => actividad = value),
                  ),

                  const SizedBox(height: 20),

                  // Botón enviar
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Aquí procesas el formulario
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text('Enviar'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor ingresa $label';
        }
        return null;
      },
    );
  }

  Widget _buildDropdown({
    required String? value,
    required String label,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      items: items.map((item) {
        return DropdownMenuItem(value: item, child: Text(item));
      }).toList(),
      onChanged: onChanged,
      validator: (value) => value == null ? 'Por favor selecciona $label' : null,
    );
  }
}
