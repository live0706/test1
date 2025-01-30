import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_infirmier.dart';

class DossierInfirmierView extends StatelessWidget {
  const DossierInfirmierView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Dossier Infirmier'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuInfirmier(
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
