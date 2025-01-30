import 'package:bigprojet/src/views/mobile/infirmier/dossier_infirmier_view.dart' as dossier;
import 'package:bigprojet/src/views/mobile/infirmier/scan_infirmier_view.dart' as scan;
import 'package:flutter/material.dart';
import 'package:bigprojet/src/views/mobile/infirmier/home_infirmier_view.dart' as home;
import 'package:bigprojet/src/views/mobile/infirmier/profile_infirmier_view.dart' as profile;
class MenuInfirmier extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MenuInfirmier({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      currentIndex: selectedIndex,
      onTap: (index) {
        onItemTapped(index);
        // Navigation vers les différentes pages en fonction de l'index sélectionné
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => home.HomeInfirmierView()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => dossier.DossierInfirmierView()),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => scan.ScanInfirmierView()),
          );
        }
        else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => profile.ProfileInfirmierView()),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/accueil.png',
            width: 24,
            height: 24,
            color: selectedIndex == 0 ? Colors.black : Colors.black54,
          ),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/rendez-vous.png',
            width: 24,
            height: 24,
            color: selectedIndex == 1 ? Colors.black : Colors.black54,
          ),
          label: 'Dossier',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/scan.png',
            width: 24,
            height: 24,
            color: selectedIndex == 2 ? Colors.black : Colors.black54,
          ),
          label: 'Scan',
        ),
          BottomNavigationBarItem(
          icon: Image.asset(
            'assets/profil.png',
            width: 24,
            height: 24,
            color: selectedIndex == 2 ? Colors.black : Colors.black54,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}