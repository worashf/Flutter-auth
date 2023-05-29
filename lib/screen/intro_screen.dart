import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import './home_screen.dart';
import './signup_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    User? result = FirebaseAuth.instance.currentUser;
    return SplashScreen(
      navigateAfterSeconds: result != null ? Home(uid: result.uid) : SignUp(),
      seconds: 5,
      title: const Text(
        'Welcome To Meet up!',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset('assets/images/dart.png', fit: BoxFit.scaleDown),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: const TextStyle(),
      photoSize: 100.0,
      onClick: () => print("flutter"),
      loaderColor: Colors.red,
      loadingText: const Text("Splash"),
      loadingTextPadding: const EdgeInsets.all(10),
      useLoader: true,
    );
  }
}
