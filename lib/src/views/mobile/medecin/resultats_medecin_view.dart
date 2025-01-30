import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_medecin.dart';

class ResultatsMedecinView extends StatelessWidget {
  const ResultatsMedecinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Résultats Medecin'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuMedecin(
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
