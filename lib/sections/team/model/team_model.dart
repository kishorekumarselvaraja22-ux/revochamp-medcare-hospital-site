import 'package:flutter/material.dart';

class TeamMember {
  final String name;
  final String role;
  final String description;
  final String imageUrl;
  const TeamMember(
      {required this.name,
      required this.role,
      required this.description,
      required this.imageUrl});
}

class TeamModel {
  final String sectionTitle;
  final List<TeamMember> members;
  const TeamModel({required this.sectionTitle, required this.members});
}