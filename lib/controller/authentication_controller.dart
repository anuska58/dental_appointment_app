import 'dart:convert';

import 'package:dental_appointment_anuska_fyp/utils/api.dart';
import 'package:dental_appointment_anuska_fyp/utils/shared_prefs.dart';
import 'package:dental_appointment_anuska_fyp/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;



class Authentication extends GetxController{
  final _token= ''.obs;
  final authService=AuthService();

  login(data) async {
    print(data);
    var url =Uri.parse(LOGIN_API);
     var response = await http.post(url, body:data);  //await: to wait the second portion unless the first portion is done.
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    if(jsonResponse["success"]){
      await authService.saveToken(jsonResponse["token"]);
      Get.offAll(const HomePage());
      Get.snackbar("Success", jsonResponse["message"],
      colorText: Colors.green,
      backgroundColor: Colors.white,
      );
    }else{
      Get.snackbar("Error", jsonResponse["message"],
      colorText: Colors.red,
      backgroundColor: Colors.white,
      );
    }
   
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  }
}