// Generated on 2026-06-03 20:27:12.720
// SEO Page Title: MedCare Hospital & Specialist Clinic
// SEO Meta Description: Access highly qualified cardiologists, pediatricians, and general practitioners. Book your appointment online.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedCare Hospital & Specialist Clinic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const BuiltWebsiteHomePage(),
    );
  }
}