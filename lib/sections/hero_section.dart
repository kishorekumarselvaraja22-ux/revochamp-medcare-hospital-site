import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import '../theme/responsive.dart';
import '../widgets/app_button.dart';
import '../widgets/section_title.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    final isDesktop = Responsive.isDesktop(context);

    final forceStack = isMobile || isTablet;
    final isCentered = false || forceStack;
    final contentWidget = Column(
      crossAxisAlignment:
          isCentered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        SectionTitle(
          title: 'Compassionate Care for a Healthier Life',
          subtitle: 'Your Health is Our Top Priority',
          isCentered: isCentered,
        ),
        const SizedBox(height: 16),
        Text(
          'Access world-class medical specialists and advanced diagnostic services. Schedule your appointment online within minutes.',
          textAlign: isCentered ? TextAlign.center : TextAlign.left,
          style: GoogleFonts.getFont(AppTypography.bodyFont,
              textStyle: TextStyle(
                  color: AppColors.text.withValues(alpha: 0.6),
                  fontSize: isMobile
                      ? AppTypography.bodySize - 1
                      : AppTypography.bodySize,
                  height: 1.5)),
        ),
        const SizedBox(height: 32),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          alignment: isCentered ? WrapAlignment.center : WrapAlignment.start,
          children: [
            AppButton(
              text: 'Book Appointment',
              onPressed: () {},
            ),
            AppButton(
              text: 'Meet Our Doctors',
              isPrimary: false,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: isMobile
              ? AppSpacing.sectionPadding * 0.6
              : AppSpacing.sectionPadding,
          horizontal: isMobile ? 20 : 48),
      color: AppColors.background,
      child: forceStack
          ? Column(
              children: [
                contentWidget,
                const SizedBox(height: 32),
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppTheme.cardRadius),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1622253692010-333f2da6031d?q=80&w=600',
                      height: isMobile ? 220 : 320,
                      width: double.infinity,
                      fit: BoxFit.cover),
                ),
              ],
            )
          : Row(
              children: [
                Expanded(flex: 6, child: contentWidget),
                const SizedBox(width: 32),
                Expanded(
                  flex: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppTheme.cardRadius),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1622253692010-333f2da6031d?q=80&w=600',
                        height: 320,
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
    );
  }
}