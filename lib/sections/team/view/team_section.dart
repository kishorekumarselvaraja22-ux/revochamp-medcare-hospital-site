import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_typography.dart';
import '../theme/app_theme.dart';
import '../widgets/section_title.dart';
import '../theme/app_colors.dart';
import '../theme/app_icons.dart';
import '../model/team_model.dart';
import '../provider/team_provider.dart';

class TeamSection extends ConsumerWidget {
  final bool isMobile;
  final bool isTablet;

  const TeamSection(
      {super.key, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final team = ref.watch(teamProvider);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: isMobile
              ? AppSpacing.sectionPadding * 0.6
              : AppSpacing.sectionPadding,
          horizontal: isMobile ? 20 : 48),
      color: AppColors.background,
      child: Column(
        children: [
          SectionTitle(title: team.sectionTitle),
          SizedBox(height: isMobile ? 32 : 48),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: team.members.map((member) {
              final hasImg = member.imageUrl.isNotEmpty;
              return Container(
                width: isMobile ? double.infinity : (isTablet ? 260 : 240),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.02),
                  borderRadius: BorderRadius.circular(AppTheme.cardRadius),
                  border:
                      Border.all(color: Colors.white.withValues(alpha: 0.05)),
                ),
                child: Column(
                  children: [
                    if (hasImg)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                            width: 80,
                            height: 80,
                            child: Image.network(member.imageUrl,
                                fit: BoxFit.cover)),
                      )
                    else
                      const CircleAvatar(
                          radius: 40,
                          backgroundColor: AppColors.primary,
                          child: Icon(Icons.person,
                              size: 40, color: Colors.white)),
                    const SizedBox(height: 16),
                    Text(member.name,
                        style: GoogleFonts.getFont(AppTypography.headingFont,
                            textStyle: const TextStyle(
                                color: AppColors.text,
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                    Text(member.role,
                        style: GoogleFonts.getFont(AppTypography.bodyFont,
                            textStyle: const TextStyle(
                                color: AppColors.primary,
                                fontSize: 13,
                                fontWeight: FontWeight.w600))),
                    const SizedBox(height: 8),
                    Text(member.description,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(AppTypography.bodyFont,
                            textStyle: TextStyle(
                                color: AppColors.text.withValues(alpha: 0.5),
                                fontSize: 12))),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}