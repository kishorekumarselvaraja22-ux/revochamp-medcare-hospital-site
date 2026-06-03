import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/contact_model.dart';
import '../controller/contact_controller.dart';

final contactProvider =
    StateNotifierProvider<ContactController, ContactModel>((ref) {
  return ContactController(ContactModel(
    sectionTitle: 'Book Your Appointment Online',
    email: 'appointments@medcare.com',
    phone: '+1 (555) 321-4321',
    address: '789 Health Parkway, Medical District, NY',
    showForm: true,
  ));
});