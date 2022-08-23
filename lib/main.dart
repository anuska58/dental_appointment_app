import 'package:dental_appointment_anuska_fyp/views/pages/loader.dart';
import 'package:dental_appointment_anuska_fyp/views/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/authentication_controller.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 Get.put(Authentication());
  runApp(const MaterialApp(
      home: GetMaterialApp(title: "Dental Appointment Project", home: Loader())));
}

