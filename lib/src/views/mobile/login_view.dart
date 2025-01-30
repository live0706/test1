import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/custom_button.dart';
import 'package:bigprojet/src/widgets/underline_text.dart';
import 'package:bigprojet/src/views/mobile/signup_view.dart'; // Import the SignupView

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 150,
                ),
              ),
              SizedBox(height: 32.0),
              Center(
                child: Text(
                  'Connexion',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 32.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Adresse mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: UnderlineText(
                  text: 'Mot de passe oublié?',
                  onTap: () {
                    // Handle forgot password
                  },
                ),
              ),
              SizedBox(height: 16.0),
              CustomButton(
                text: 'Me connecter',
                onPressed: () {
                  // Handle login
                },
              ),
              SizedBox(height: 70.0),
              Center(
                child: Text('Pas de compte?'),
              ),
              CustomButton(
                text: 'S\'inscrire',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupView()),
                  );
                },
              ),
              SizedBox(height: 100.0),
             CustomButton(
              text: 'Je suis un patient',
              onPressed: () {
                Navigator.pushNamed(context, '/patient');
              },
            ),
            ],
          ),
        ),
      ),
    );
  }
}
