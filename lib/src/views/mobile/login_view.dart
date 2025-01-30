import 'package:flutter/material.dart';
import 'package:bigprojet/src/views/mobile/signup_view.dart'; // Import RegisterScreen

class LoginView extends StatelessWidget {
  final String userType; // Add a parameter to accept user type

  const LoginView({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          // Add SingleChildScrollView to handle overflow
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/logo.png', // Updated file path
                height: 150, // Adjust the height of the logo
                fit: BoxFit.contain,
              ),
              SizedBox(height: 20), // Adjust the height to add some space below the logo
              Text(
                'Connexion',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4.0,
                child: Container(
                  width: 400, // Width of the card
                  padding: const EdgeInsets.all(20.0), // Padding inside the card
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Mot de passe',
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Add your login logic here
                        },
                        child: Text('Se connecter'),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Vous n\'avez pas de compte? '),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupView()),
                              );
                            },
                            child: Text(
                              'S\'inscrire',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
