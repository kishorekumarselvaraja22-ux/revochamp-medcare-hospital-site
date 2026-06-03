import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import '../theme/responsive.dart';
import '../widgets/app_card.dart';
import '../widgets/section_title.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    final isDesktop = Responsive.isDesktop(context);

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: isMobile
              ? AppSpacing.sectionPadding * 0.6
              : AppSpacing.sectionPadding,
          horizontal: isMobile ? 20 : 48),
      color: AppColors.background,
      child: Column(
        children: [
          SectionTitle(title: 'Frequently Asked Questions'),
          SizedBox(height: isMobile ? 32 : 48),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: AppCard(
              padding: const EdgeInsets.all(8),
              child: ExpansionTile(
                title: Text('What are your operating hours?',
                    style: GoogleFonts.getFont(AppTypography.headingFont,
                        textStyle: const TextStyle(
                            color: AppColors.text,
                            fontWeight: FontWeight.bold))),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Our clinic is open Monday-Saturday from 8:00 AM to 8:00 PM. Emergency services operate 24/7.',
                        style: GoogleFonts.getFont(AppTypography.bodyFont,
                            textStyle: TextStyle(
                                color: AppColors.text.withValues(alpha: 0.7)))),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: AppCard(
              padding: const EdgeInsets.all(8),
              child: ExpansionTile(
                title: Text('Do you accept health insurance?',
                    style: GoogleFonts.getFont(AppTypography.headingFont,
                        textStyle: const TextStyle(
                            color: AppColors.text,
                            fontWeight: FontWeight.bold))),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Yes, we accept major local and international health insurance providers. Please check with billing for details.',
                        style: GoogleFonts.getFont(AppTypography.bodyFont,
                            textStyle: TextStyle(
                                color: AppColors.text.withValues(alpha: 0.7)))),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: AppCard(
              padding: const EdgeInsets.all(8),
              child: ExpansionTile(
                title: Text('How do I cancel my appointment?',
                    style: GoogleFonts.getFont(AppTypography.headingFont,
                        textStyle: const TextStyle(
                            color: AppColors.text,
                            fontWeight: FontWeight.bold))),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'You can cancel or reschedule by calling our helpdesk at least 24 hours prior to your slot.',
                        style: GoogleFonts.getFont(AppTypography.bodyFont,
                            textStyle: TextStyle(
                                color: AppColors.text.withValues(alpha: 0.7)))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}