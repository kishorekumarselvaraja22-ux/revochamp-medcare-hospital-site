import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/services_model.dart';
import '../controller/services_controller.dart';

final featuresProvider =
    StateNotifierProvider<FeaturesController, FeaturesModel>((ref) {
  final itemsData = [
    {
      "title": "Cardiology Care",
      "description":
          "Advanced diagnostics and treatment plans for heart health.",
      "icon": "favorite_rounded"
    },
    {
      "title": "Pediatrics",
      "description":
          "Gentle and dedicated healthcare for child growth & development.",
      "icon": "child_care_rounded"
    },
    {
      "title": "Neurology Services",
      "description":
          "Expert evaluation and care for complex nervous system disorders.",
      "icon": "psychology_rounded"
    },
    {
      "title": "Dental Services",
      "description":
          "Full-range oral care from cleanings to cosmetic rehabilitation.",
      "icon": "medical_services_rounded"
    }
  ];
  final items = itemsData
      .map<FeatureItem>((item) => FeatureItem(
            title: item['title'] ?? 'Title',
            description: item['description'] ?? 'Desc',
            icon: item['icon'] ?? 'star_rounded',
          ))
      .toList();
  return FeaturesController(FeaturesModel(
    sectionTitle: 'Our Medical Specialities',
    sectionSubtitle:
        'Comprehensive clinical care and diagnostics for you and your family.',
    items: items,
  ));
});