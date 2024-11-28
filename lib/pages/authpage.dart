import 'package:easypku/pages/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:easypku/pages/loginpage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges()
        , builder: (context,snapshot){
          if (snapshot.hasData) {
            return const Dashboard();
          }
          else {
            return const LoginPage();
          }
        },
      ),
    );
    
  }
}