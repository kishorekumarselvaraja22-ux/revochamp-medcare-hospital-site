import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/footer_model.dart';
import '../controller/footer_controller.dart';

final footerProvider =
    StateNotifierProvider<FooterController, FooterModel>((ref) {
  return FooterController(FooterModel(
    companyName: 'MedCare Clinic LLC',
    copyright: '© 2026 MedCare. All Rights Reserved.',
  ));
});