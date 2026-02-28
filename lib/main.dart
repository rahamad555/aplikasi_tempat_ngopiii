import 'package:flutter/material.dart';
import 'page/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Tempat Ngopi',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFF6F1EB),
      ),
      home: const ListPage(),
    );
  }
}