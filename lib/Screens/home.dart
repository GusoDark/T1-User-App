import 'package:flutter/material.dart';
import 'package:user_app1/Screens/profile_creation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const Color.fromARGB(255, 124, 124, 124),
appBar: AppBar(title: const Center(child: Text("MENU/HOME",  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900, color: Colors.white)), ),  backgroundColor: const Color.fromARGB(255, 47, 47, 47)),
body: Center(
  child: Container(
  height: 500,
  width: 350,
    child:  Column(
      children: [
         const SizedBox(height: 30),
         const Text("User-App T1: Da Click en el botón para continuar y crear tu perfil", style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center, ),
         const SizedBox(height: 70),
        ElevatedButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateProfileScreen()));},
           style: ElevatedButton.styleFrom(
            minimumSize: const Size(50, 70),
    backgroundColor: const Color.fromARGB(255, 48, 42, 58), 
    foregroundColor: Colors.white, 
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18), 
    ),
    elevation: 5, 
  ),
          child:  const Text("Crear Perfil")),
      ],
    ),
  ),
),
    );
  }
}