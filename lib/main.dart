import 'package:flutter/material.dart';
import 'package:bigprojet/src/routes/routes.dart';
import 'package:bigprojet/src/views/mobile/patient/home_patient_view.dart';
import 'package:bigprojet/src/views/mobile/signup_view.dart';
import 'package:bigprojet/src/views/mobile/infirmier/home_infirmier_view.dart';
import 'package:bigprojet/src/views/mobile/medecin/home_medecin_view.dart'; 
import 'package:bigprojet/src/views/mobile/welcome_view.dart';
import 'package:bigprojet/src/views/mobile/login_view.dart'; // Assurez-vous d'importer la vue de login

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
      initialRoute: '/welcome', // Set the initial route to the welcome page
      routes: {
        '/welcome': (context) => WelcomeView(),
        '/login': (context) => LoginView(userType: 'defaultUserType'), // Ajoutez la route pour la vue de login
        '/signup': (context) => SignupView(),
        '/patient': (context) => HomePatientView(),
        '/infirmier': (context) => HomeInfirmierView(),
        '/medecin': (context) => HomeMedecinView(),
      },
    );
  }
}
