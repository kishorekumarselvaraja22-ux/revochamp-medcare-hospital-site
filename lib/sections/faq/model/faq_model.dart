import 'package:flutter/material.dart';

class FaqItem {
  final String question;
  final String answer;
  const FaqItem({required this.question, required this.answer});
}

class FaqModel {
  final String sectionTitle;
  final List<FaqItem> items;
  const FaqModel({required this.sectionTitle, required this.items});
}