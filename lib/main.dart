import 'package:flutter/material.dart';
import 'package:bigprojet/src/routes/routes.dart';
import 'package:bigprojet/src/views/mobile/patient/home_patient_view.dart';
import 'package:bigprojet/src/views/mobile/signup_view.dart';
import 'package:bigprojet/src/views/mobile/infirmier/home_infirmier_view.dart';
import 'package:bigprojet/src/views/mobile/medecin/home_medecin_view.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Big Projet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute, // Use onGenerateRoute for route generation
      initialRoute: '/login', // Set the initial route
      routes: {
        '/signup': (context) => SignupView(),
        '/patient': (context) => HomePatientView(),
        '/infirmier': (context) => HomeInfirmierView(),
        '/medecin': (context) => HomeMedecinView(),
      },
    );
  }
}
