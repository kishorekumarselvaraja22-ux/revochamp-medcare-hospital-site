import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/faq_model.dart';
import '../controller/faq_controller.dart';

final faqProvider = StateNotifierProvider<FaqController, FaqModel>((ref) {
  final itemsData = [
    {
      "question": "What are your operating hours?",
      "answer":
          "Our clinic is open Monday-Saturday from 8:00 AM to 8:00 PM. Emergency services operate 24/7."
    },
    {
      "question": "Do you accept health insurance?",
      "answer":
          "Yes, we accept major local and international health insurance providers. Please check with billing for details."
    },
    {
      "question": "How do I cancel my appointment?",
      "answer":
          "You can cancel or reschedule by calling our helpdesk at least 24 hours prior to your slot."
    }
  ];
  final items = itemsData
      .map<FaqItem>((item) => FaqItem(
            question: item['question'] ?? '',
            answer: item['answer'] ?? '',
          ))
      .toList();
  return FaqController(FaqModel(
    sectionTitle: 'Frequently Asked Questions',
    items: items,
  ));
});