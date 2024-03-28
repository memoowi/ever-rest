import 'package:ever_rest/firebase_options.dart';
import 'package:ever_rest/screens/login_screen.dart';
import 'package:ever_rest/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EverRest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
