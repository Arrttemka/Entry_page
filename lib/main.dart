import 'package:entry_page/presentation/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'presentation/pages/splash_page.dart';

void main() {
  runApp(const EntryApp());
}

class EntryApp extends StatelessWidget {
  const EntryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthPage(),
      },
    );
  }
}