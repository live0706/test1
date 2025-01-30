import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/custom_button.dart'; // Importez le widget CustomButton

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final ValueNotifier<String?> _roleNotifier = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/logo.png', // Assurez-vous que le logo est dans le dossier assets
                  height: 150,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Inscription',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Adresse mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Confirmation mot de passe',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              Text(
                'Qui suis-je ?',
                style: TextStyle(fontSize: 18),
              ),
              ValueListenableBuilder<String?>(
                valueListenable: _roleNotifier,
                builder: (context, role, child) {
                  return Column(
                    children: [
                      ListTile(
                        title: const Text('Médecin'),
                        leading: Radio<String>(
                          value: 'medecin',
                          groupValue: role,
                          onChanged: (value) {
                            _roleNotifier.value = value;
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Infirmier'),
                        leading: Radio<String>(
                          value: 'infirmier',
                          groupValue: role,
                          onChanged: (value) {
                            _roleNotifier.value = value;
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'M\'inscrire',
                onPressed: () {
                  if (_roleNotifier.value == 'medecin') {
                    Navigator.pushNamed(context, '/medecin');
                  } else if (_roleNotifier.value == 'infirmier') {
                    Navigator.pushNamed(context, '/infirmier');
                  } else {
                    // Handle case where no role is selected
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Veuillez sélectionner un rôle.')),
                    );
                  }
                },
              ),
              SizedBox(height: 100),
              Center(
                child: Text(
                  'Vous avez déjà un compte?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              CustomButton(
                text: 'Se connecter',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}