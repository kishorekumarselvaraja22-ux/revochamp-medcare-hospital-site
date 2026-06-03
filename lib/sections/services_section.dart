import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import '../theme/responsive.dart';
import '../widgets/app_card.dart';
import '../widgets/section_title.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

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
          SectionTitle(
            title: 'Our Medical Specialities',
            subtitle:
                'Comprehensive clinical care and diagnostics for you and your family.',
          ),
          SizedBox(height: isMobile ? 32 : 48),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: [
              SizedBox(
                width: isMobile ? double.infinity : (isTablet ? 320 : 280),
                child: AppCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.favorite_rounded,
                            color: AppColors.primary),
                      ),
                      const SizedBox(height: 16),
                      Text('Cardiology Care',
                          style: GoogleFonts.getFont(AppTypography.headingFont,
                              textStyle: const TextStyle(
                                  color: AppColors.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))),
                      const SizedBox(height: 8),
                      Text(
                          'Advanced diagnostics and treatment plans for heart health.',
                          style: GoogleFonts.getFont(AppTypography.bodyFont,
                              textStyle: TextStyle(
                                  color: AppColors.text.withValues(alpha: 0.5),
                                  fontSize: 13))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: isMobile ? double.infinity : (isTablet ? 320 : 280),
                child: AppCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.child_care_rounded,
                            color: AppColors.primary),
                      ),
                      const SizedBox(height: 16),
                      Text('Pediatrics',
                          style: GoogleFonts.getFont(AppTypography.headingFont,
                              textStyle: const TextStyle(
                                  color: AppColors.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))),
                      const SizedBox(height: 8),
                      Text(
                          'Gentle and dedicated healthcare for child growth & development.',
                          style: GoogleFonts.getFont(AppTypography.bodyFont,
                              textStyle: TextStyle(
                                  color: AppColors.text.withValues(alpha: 0.5),
                                  fontSize: 13))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: isMobile ? double.infinity : (isTablet ? 320 : 280),
                child: AppCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.psychology_rounded,
                            color: AppColors.primary),
                      ),
                      const SizedBox(height: 16),
                      Text('Neurology Services',
                          style: GoogleFonts.getFont(AppTypography.headingFont,
                              textStyle: const TextStyle(
                                  color: AppColors.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))),
                      const SizedBox(height: 8),
                      Text(
                          'Expert evaluation and care for complex nervous system disorders.',
                          style: GoogleFonts.getFont(AppTypography.bodyFont,
                              textStyle: TextStyle(
                                  color: AppColors.text.withValues(alpha: 0.5),
                                  fontSize: 13))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: isMobile ? double.infinity : (isTablet ? 320 : 280),
                child: AppCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.medical_services_rounded,
                            color: AppColors.primary),
                      ),
                      const SizedBox(height: 16),
                      Text('Dental Services',
                          style: GoogleFonts.getFont(AppTypography.headingFont,
                              textStyle: const TextStyle(
                                  color: AppColors.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))),
                      const SizedBox(height: 8),
                      Text(
                          'Full-range oral care from cleanings to cosmetic rehabilitation.',
                          style: GoogleFonts.getFont(AppTypography.bodyFont,
                              textStyle: TextStyle(
                                  color: AppColors.text.withValues(alpha: 0.5),
                                  fontSize: 13))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}