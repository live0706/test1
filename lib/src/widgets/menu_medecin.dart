import 'package:bigprojet/src/views/mobile/medecin/resultats_medecin_view.dart' as resultats;
import 'package:bigprojet/src/views/mobile/medecin/scan_medecin_view.dart' as scan;
import 'package:flutter/material.dart';
import 'package:bigprojet/src/views/mobile/medecin/home_medecin_view.dart' as home;
import 'package:bigprojet/src/views/mobile/medecin/profile_medecin_view.dart' as profile;

class MenuMedecin extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MenuMedecin({
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
            MaterialPageRoute(builder: (context) => home.HomeMedecinView()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => resultats.ResultatsMedecinView()),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => scan.ScanMedecinView()),
          );
        }
        else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => profile.ProfileMedecinView()),
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
            color: selectedIndex == 3 ? Colors.black : Colors.black54,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}