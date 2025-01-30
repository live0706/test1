import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_patient.dart';

class RendezVousPatientView extends StatelessWidget {
  const RendezVousPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Rendez-vous patient'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuPatient(
                selectedIndex: 1,
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
