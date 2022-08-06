import 'package:dental_appointment_anuska_fyp/views/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
      home: GetMaterialApp(
      title: "Dental Appointment Project",
      home: LoginScreen(),
    )
  ));
}

