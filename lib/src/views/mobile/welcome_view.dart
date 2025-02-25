import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image.jpg'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(), // Add spacer to push the logo to the center
                Image.asset(
                  'assets/logo.png', // Path to your logo image
                  height: 500, // Set the height of the logo to 500
                  fit: BoxFit.contain,
                ),
                Spacer(), // Add spacer to push the buttons down
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text('Je suis infirmier'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                
                SizedBox(height: 40), // Add space below the buttons
              ],
            ),
          ),
        ],
      ),
    );
  }
}