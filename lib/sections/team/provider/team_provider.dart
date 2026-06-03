import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/team_model.dart';
import '../controller/team_controller.dart';

final teamProvider = StateNotifierProvider<TeamController, TeamModel>((ref) {
  final membersData = [
    {
      "name": "Dr. Jane Doe",
      "role": "Chief Cardiologist",
      "description":
          "Over 15 years of experience in cardiovascular interventions.",
      "imageUrl":
          "https://images.unsplash.com/photo-1594824813573-246434de83fb?q=80&w=400"
    },
    {
      "name": "Dr. John Smith",
      "role": "Senior Pediatrician",
      "description":
          "Passionate about child health, neonatology, and preventative care.",
      "imageUrl":
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=400"
    }
  ];
  final members = membersData
      .map<TeamMember>((m) => TeamMember(
            name: m['name'] ?? '',
            role: m['role'] ?? '',
            description: m['description'] ?? '',
            imageUrl: m['imageUrl'] ?? '',
          ))
      .toList();
  return TeamController(TeamModel(
    sectionTitle: 'Meet Our Qualified Specialists',
    members: members,
  ));
});