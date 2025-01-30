import 'package:bigprojet/src/views/mobile/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_patient.dart';

class ProfilePatientView extends StatelessWidget {
  const ProfilePatientView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Profile Infirmier'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Ajoutez ici la logique de déconnexion
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => WelcomeView()),
                    );
                  },
                  child: Text('Se déconnecter'),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuPatient(
                selectedIndex: 3,
                onItemTapped: (index) {
                  // Handle item tap
                },
              );
            },
          ),
        );
      },
    );
  }
}