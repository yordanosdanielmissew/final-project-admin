import 'package:admin_part/authenthication/auth_screen.dart';
import 'package:admin_part/home/main_page.dart';
// import 'package:admin_part/options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// import 'options.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();

   await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform
      );
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: AuthStateScreen(),
    );
  }
}
