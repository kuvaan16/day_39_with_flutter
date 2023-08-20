import 'package:day_39_with_flutter/pages/home_page.dart';
import 'package:day_39_with_flutter/pages/register_page.dart';
import 'package:day_39_with_flutter/services/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          }
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
