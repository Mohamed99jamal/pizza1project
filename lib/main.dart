import 'package:flutter/material.dart';
import 'pages/menu_page.dart';
import 'pages/page_intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizzeria App',
      home: Page_intro(),
      routes: {
        '/intropage': (context) => const Page_intro(),
        '/menupage': (context) => const Menu_page(),
      },
    );
  }
}
