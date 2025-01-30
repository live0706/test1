import 'package:flutter/material.dart';

/// Un widget de bouton personnalisé qui affiche une étiquette de texte et déclenche un rappel lorsqu'il est pressé.

/// Un widget sans état qui représente un bouton personnalisé.
class CustomButton extends StatelessWidget {
  /// Le texte à afficher sur le bouton.
  final String text;

  /// Le rappel à déclencher lorsque le bouton est pressé.
  final VoidCallback onPressed;

  /// Crée un widget [CustomButton].
  ///
  /// Les paramètres [text] et [onPressed] ne doivent pas être nuls.
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      /// Le rappel à déclencher lorsque le bouton est pressé.
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        /// Le rembourrage à l'intérieur du bouton.
        padding: EdgeInsets.symmetric(horizontal:18.0, vertical: 20.0),
        /// Le style de texte de l'étiquette du bouton.
        textStyle: TextStyle(fontSize: 18.0),
      ),
      /// L'étiquette de texte du bouton.
      child: Text(text),
    );
  }
}
