import 'package:flutter/material.dart';
import 'package:bigprojet/src/views/mobile/login_view.dart';
import 'package:bigprojet/src/views/mobile/signup_view.dart';
import 'package:bigprojet/src/views/mobile/infirmier/home_infirmier_view.dart'; // Importez la vue infirmier
import 'package:bigprojet/src/views/mobile/welcome_view.dart'; // Importez la vue welcome

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView(userType: settings.arguments as String));
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupView());
     
      case '/infirmier': // Ajoutez ce cas pour la route infirmier
        return MaterialPageRoute(builder: (_) => HomeInfirmierView());
      
      case '/welcome': // Ajoutez ce cas pour la route welcome
        return MaterialPageRoute(builder: (_) => WelcomeView());
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
