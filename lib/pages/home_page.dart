import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../sections/header_section.dart';
import '../sections/hero_section.dart';
import '../sections/services_section.dart';
import '../sections/team_section.dart';
import '../sections/contact_section.dart';
import '../sections/faq_section.dart';
import '../sections/footer_section.dart';

class BuiltWebsiteHomePage extends StatelessWidget {
  const BuiltWebsiteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderSection(),
            HeroSection(),
            ServicesSection(),
            TeamSection(),
            ContactSection(),
            FaqSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}