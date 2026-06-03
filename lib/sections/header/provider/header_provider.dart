import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/header_model.dart';
import '../controller/header_controller.dart';

final headerProvider =
    StateNotifierProvider<HeaderController, HeaderModel>((ref) {
  return HeaderController(HeaderModel(
    logoText: 'MedCare Clinic',
    logoIcon: 'health_and_safety_rounded',
    links: ["Doctors", "Services", "Appointment", "FAQ", "Contact"],
  ));
});

// --- View ---