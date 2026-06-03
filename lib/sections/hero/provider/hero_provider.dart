import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/hero_model.dart';
import '../controller/hero_controller.dart';

final heroProvider = StateNotifierProvider<HeroController, HeroModel>((ref) {
  return HeroController(HeroModel(
    title: 'Compassionate Care for a Healthier Life',
    subtitle: 'Your Health is Our Top Priority',
    description:
        'Access world-class medical specialists and advanced diagnostic services. Schedule your appointment online within minutes.',
    primaryButtonText: 'Book Appointment',
    secondaryButtonText: 'Meet Our Doctors',
    imageUrl:
        'https://images.unsplash.com/photo-1622253692010-333f2da6031d?q=80&w=600',
    isCentered: false,
  ));
});

// --- View ---