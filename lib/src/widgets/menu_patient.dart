import 'package:bigprojet/src/views/mobile/patient/resultat_patient_view.dart';
import 'package:flutter/material.dart';
import 'package:bigprojet/src/views/mobile/patient/home_patient_view.dart';
import 'package:bigprojet/src/views/mobile/patient/rendez-vous_patient_view.dart';
import 'package:bigprojet/src/views/mobile/patient/profile_patient_view.dart';


class MenuPatient extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MenuPatient({
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
            MaterialPageRoute(builder: (context) => HomePatientView()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RendezVousPatientView()),
          );
        }  else if (index == 2) {
          Navigator.push(
            context,
          MaterialPageRoute(builder: (context) => ResultatPatientView()),
          );// Ajouter une nouvelle page
        }
        else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePatientView()),
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
          label: 'Rendez-vous',
        ),
          BottomNavigationBarItem(
          icon: Image.asset(
            'assets/dossier.png',
            width: 24,
            height: 24,
            color: selectedIndex == 2 ? Colors.black : Colors.black54,
          ),
          label: 'Résultat',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/profil.png',
            width: 24,
            height: 24,
            color: selectedIndex == 3 ? Colors.black : Colors.black54,
          ),
          label: 'Profil',
        ),
      
      ],
    );
  }
}
