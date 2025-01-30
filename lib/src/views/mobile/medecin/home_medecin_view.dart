import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_medecin.dart';

class HomeMedecinView extends StatelessWidget {
  const HomeMedecinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Accueil Medecin'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuMedecin(
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
