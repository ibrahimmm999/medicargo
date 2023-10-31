import 'package:flutter/material.dart';
import 'package:medicargo/pages/main_page.dart';
import 'package:medicargo/pages/sign_in_page.dart';
import 'package:medicargo/pages/splash_page.dart';
import 'package:medicargo/provider/page_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/main': (context) => const MainPage(),
          '/sign-in': (context) => const SignInPage(),
        },
      ),
    );
  }
}
