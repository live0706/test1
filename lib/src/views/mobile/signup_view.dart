import 'package:flutter/material.dart';
import 'package:bigprojet/src/views/mobile/login_view.dart'; // Import LoginScreen

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool _isPolicyAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            // Add SingleChildScrollView to handle overflow
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5), // Decrease space above the logo
                Image.asset(
                  'assets/logo.png', // Updated file path
                  height: 150, // Decrease the height of the logo
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 5),
                Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5), // Decrease space above the card
                Card(
                  elevation: 4.0,
                  child: Container(
                    width: 400, // Width of the card
                    padding:
                        const EdgeInsets.all(20.0), // Padding inside the card
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Nom',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Prénom',
                          ),
                        ),
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Confirmation mot de passe',
                          ),
                          obscureText: true,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Choisissez votre rôle',
                          ),
                            items: [
                            DropdownMenuItem(
                              value: 'medecin',
                              child: Text('Médecin'),
                            ),
                            DropdownMenuItem(
                              value: 'infirmier',
                              child: Text('Infirmier'),
                            ),
                            ],
                          onChanged: (value) {
                            setState(() {
                              // Store the selected role
                              if (value == 'medecin') {
                              Navigator.pushNamed(context, '/medecin');
                              } else if (value == 'infirmier') {
                              Navigator.pushNamed(context, '/infirmier');
                              }
                            });
                          },
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                          Checkbox(
                            value: _isPolicyAccepted,
                            onChanged: (newValue) {
                            setState(() {
                              _isPolicyAccepted = newValue!;
                            });
                            },
                          ),
                          SizedBox(width: 8), // Add some space between checkbox and text
                          Expanded(
                            child: Text("J'accepte la politique de confidentialité"),
                          ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Logique d'inscription
                          },
                          child: Text('S\'inscrire'),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Vous avez déjà un compte? '),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginView(userType: '',)),
                                );
                              },
                              child: Text(
                                'Connexion',
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
      ),
    );
}


}
