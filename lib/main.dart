import 'package:day_39_with_flutter/pages/login_page.dart';
import 'package:day_39_with_flutter/pages/register_page.dart';
import 'package:day_39_with_flutter/services/auth/auth_gate.dart';
import 'package:day_39_with_flutter/services/auth/auth_service.dart';
import 'package:day_39_with_flutter/services/auth/login_or_register.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
