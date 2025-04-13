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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Datos Básicos del Usuario',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              // Peso
              TextFormField(
                controller: pesoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Peso actual (kg)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu peso';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),

              // Altura
              TextFormField(
                controller: alturaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Altura (cm)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu altura';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),

              // Edad
              TextFormField(
                controller: edadController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Edad (años)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu edad';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),

              // Sexo
              DropdownButtonFormField<String>(
                value: sexo,
                decoration: const InputDecoration(
                  labelText: 'Sexo biológico',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'hombre', child: Text('Hombre')),
                  DropdownMenuItem(value: 'mujer', child: Text('Mujer')),
                  DropdownMenuItem(value: 'no_decir', child: Text('Prefiero no decirlo')),
                ],
                onChanged: (value) => setState(() => sexo = value),
                validator: (value) => value == null ? 'Selecciona una opción' : null,
              ),
              const SizedBox(height: 12),

              // Complexión
              DropdownButtonFormField<String>(
                value: complexion,
                decoration: const InputDecoration(
                  labelText: 'Complexión corporal',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'delgada', child: Text('Delgada')),
                  DropdownMenuItem(value: 'promedio', child: Text('Promedio')),
                  DropdownMenuItem(value: 'musculosa', child: Text('Musculosa')),
                  DropdownMenuItem(value: 'sobrepeso', child: Text('Con sobrepeso')),
                ],
                onChanged: (value) => setState(() => complexion = value),
                validator: (value) => value == null ? 'Selecciona una opción' : null,
              ),
              const SizedBox(height: 20),

              const Text(
                'Hábitos de Actividad Física y Estilo de Vida',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              // Actividad física
              DropdownButtonFormField<String>(
                value: actividad,
                decoration: const InputDecoration(
                  labelText: 'Nivel de actividad física semanal',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'bajo', child: Text('Bajo')),
                  DropdownMenuItem(value: 'moderado', child: Text('Moderado')),
                  DropdownMenuItem(value: 'alto', child: Text('Alto')),
                ],
                onChanged: (value) => setState(() => actividad = value),
                validator: (value) => value == null ? 'Selecciona una opción' : null,
              ),
              const SizedBox(height: 24),

              // Botón enviar
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Aquí podrías navegar o mostrar datos
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Formulario enviado correctamente')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  ),
                  child: const Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
