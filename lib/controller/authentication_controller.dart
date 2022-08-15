import 'dart:convert';

import 'package:dental_appointment_anuska_fyp/utils/api.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;



class Authentication extends GetxController{
  final _token= ''.obs;

  login(data) async {
    print(data);
    var url =Uri.parse(LOGIN_API);
     var response = await http.post(url, body:data);  //await: to wait the second portion unless the first portion is done.
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    print(jsonResponse);
   
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  }
}