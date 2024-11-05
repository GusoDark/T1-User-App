import 'package:flutter/material.dart';
import 'package:user_app1/Screens/user_profile_screen.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController ocupacionController = TextEditingController();

  // Variables para manejar la validación
  bool _nameValid = true;
  bool _ageValid = true;
  bool _occupationValid = true;

  void _validateAndProceed() {
    setState(() {
      _nameValid = nameController.text.isNotEmpty;
      _ageValid = ageController.text.isNotEmpty;
      _occupationValid = ocupacionController.text.isNotEmpty;
    });

    if (_nameValid && _ageValid && _occupationValid) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            name: nameController.text,
            age: ageController.text,
            occupation: ocupacionController.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const Color.fromARGB(255, 165, 165, 165),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Crear Perfil",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 47, 47, 47),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Nombre",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorText: _nameValid ? null : "Este campo es obligatorio",
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    labelText: "Edad",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorText: _ageValid ? null : "Este campo es obligatorio",
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: ocupacionController,
                  decoration: InputDecoration(
                    labelText: "Ocupación",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorText:
                        _occupationValid ? null : "Este campo es obligatorio",
                  ),
                ),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: _validateAndProceed,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(50, 60),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                ),
                child: const Text("Guardar y Ver Perfil"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}