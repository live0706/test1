import 'package:flutter/material.dart';
import 'package:bigprojet/src/views/mobile/login_view.dart';
import 'package:bigprojet/src/views/mobile/signup_view.dart';
import 'package:bigprojet/src/views/mobile/patient/home_patient_view.dart'; // Importez la vue patient
import 'package:bigprojet/src/views/mobile/infirmier/home_infirmier_view.dart'; // Importez la vue infirmier
import 'package:bigprojet/src/views/mobile/medecin/home_medecin_view.dart'; // Importez la vue medecin

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupView());
      case '/patient': // Ajoutez ce cas pour la route patient
        return MaterialPageRoute(builder: (_) => HomePatientView());
      case '/infirmier': // Ajoutez ce cas pour la route infirmier
        return MaterialPageRoute(builder: (_) => HomeInfirmierView());
      case '/medecin': // Ajoutez ce cas pour la route medecin
        return MaterialPageRoute(builder: (_) => HomeMedecinView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
