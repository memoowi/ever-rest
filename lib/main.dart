import 'package:ever_rest/firebase_options.dart';
import 'package:ever_rest/screens/home_screen.dart';
import 'package:ever_rest/screens/login_screen.dart';
import 'package:ever_rest/screens/register_screen.dart';
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
        appBarTheme: const AppBarTheme(
          backgroundColor: CustomColors.primary,
          foregroundColor: Colors.white,
          toolbarHeight: 64,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
      },
      home: HomeScreen(),
    );
  }
}
