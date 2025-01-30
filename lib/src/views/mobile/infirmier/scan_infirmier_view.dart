import 'package:flutter/material.dart';
import 'package:bigprojet/src/widgets/menu_infirmier.dart';

class ScanInfirmierView extends StatelessWidget {
  const ScanInfirmierView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('Scan Infirmier'),
          ),
          bottomNavigationBar: Builder(
            builder: (BuildContext context) {
              return MenuInfirmier(
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
