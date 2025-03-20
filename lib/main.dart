import 'package:entry_page/presentation/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;
import 'presentation/pages/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const EntryApp());
}

class EntryApp extends StatelessWidget {
  const EntryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: di.sl<GlobalKey<NavigatorState>>(),
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/auth': (context) => const AuthPage(),
      },
    );
  }
}