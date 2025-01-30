import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_patient.dart';

class ResultatPatientView extends StatelessWidget {
  const ResultatPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Resultat patient'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuPatient(
                selectedIndex: 2,
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
