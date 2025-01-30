import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_patient.dart';

class HomePatientView extends StatelessWidget {
  const HomePatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Accueil patient'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuPatient(
                selectedIndex: 0,
                onItemTapped: (index) {
                  // Handle item tap
                },
              ); // Use MenuPatient as bottom navigation bar
            },
          ),
        );
      },
    );
  }
}
