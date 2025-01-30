import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_infirmier.dart';

class HomeInfirmierView extends StatelessWidget {
  const HomeInfirmierView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Accueil Infirmier'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuInfirmier(
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
