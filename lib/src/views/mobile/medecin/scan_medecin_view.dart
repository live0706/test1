import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_medecin.dart';

class ScanMedecinView extends StatelessWidget {
  const ScanMedecinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Scanner un code QR'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuMedecin(
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
