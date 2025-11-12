import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flash_on, color: Colors.white, size: 86),
            SizedBox(height: 18),
            Text('Testagram', style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
