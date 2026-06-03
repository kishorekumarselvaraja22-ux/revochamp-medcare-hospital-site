import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_typography.dart';
import '../widgets/app_card.dart';
import '../widgets/section_title.dart';
import '../theme/app_colors.dart';
import '../theme/app_icons.dart';
import '../model/faq_model.dart';
import '../provider/faq_provider.dart';

class FaqSection extends ConsumerWidget {
  final bool isMobile;
  final bool isTablet;

  const FaqSection({super.key, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faq = ref.watch(faqProvider);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: isMobile
              ? AppSpacing.sectionPadding * 0.6
              : AppSpacing.sectionPadding,
          horizontal: isMobile ? 20 : 48),
      color: AppColors.background,
      child: Column(
        children: [
          SectionTitle(title: faq.sectionTitle),
          SizedBox(height: isMobile ? 32 : 48),
          ...faq.items.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: AppCard(
                  padding: const EdgeInsets.all(8),
                  child: ExpansionTile(
                    title: Text(item.question,
                        style: GoogleFonts.getFont(AppTypography.headingFont,
                            textStyle: const TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.bold))),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.answer,
                            style: GoogleFonts.getFont(AppTypography.bodyFont,
                                textStyle: TextStyle(
                                    color: AppColors.text
                                        .withValues(alpha: 0.7)))),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}