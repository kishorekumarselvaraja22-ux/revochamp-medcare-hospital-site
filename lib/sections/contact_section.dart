import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import '../theme/responsive.dart';
import '../widgets/app_button.dart';
import '../widgets/app_card.dart';
import '../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    final isDesktop = Responsive.isDesktop(context);

    final infoWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Book Your Appointment Online', isCentered: false),
        const SizedBox(height: 24),
        Text('Phone: +1 (555) 321-4321',
            style: GoogleFonts.getFont(AppTypography.bodyFont,
                textStyle: TextStyle(
                    color: AppColors.text, fontSize: isMobile ? 14 : 16))),
        const SizedBox(height: 12),
        Text('Email: appointments@medcare.com',
            style: GoogleFonts.getFont(AppTypography.bodyFont,
                textStyle: TextStyle(
                    color: AppColors.text, fontSize: isMobile ? 14 : 16))),
        const SizedBox(height: 12),
        Text('Address: 789 Health Parkway, Medical District, NY',
            style: GoogleFonts.getFont(AppTypography.bodyFont,
                textStyle: TextStyle(
                    color: AppColors.text, fontSize: isMobile ? 14 : 16))),
      ],
    );

    final formWidget = AppCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const TextField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.white70))),
          const SizedBox(height: 16),
          const TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white70))),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: AppButton(
              text: 'Send Message',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: isMobile
              ? AppSpacing.sectionPadding * 0.6
              : AppSpacing.sectionPadding,
          horizontal: isMobile ? 20 : 48),
      color: AppColors.background,
      child: (isMobile || isTablet)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                infoWidget,
                const SizedBox(height: 32),
                formWidget,
              ],
            )
          : Row(
              children: [
                Expanded(child: infoWidget),
                const SizedBox(width: 48),
                Expanded(child: formWidget),
              ],
            ),
    );
  }
}