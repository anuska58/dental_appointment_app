import 'package:dental_appointment_anuska_fyp/controller/authentication_controller.dart';
import 'package:dental_appointment_anuska_fyp/utils/shared_prefs.dart';
import 'package:dental_appointment_anuska_fyp/views/pages/loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstTab extends StatelessWidget {
  final AuthService authService= AuthService();
  final authentication=Get.find<Authentication>();
  FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: Container(
    //     child: const Text('Perfect Dental',
    //     textAlign:TextAlign.center,
    //     style: TextStyle(
    //       fontSize: 25,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.black,
    //       decoration: TextDecoration.underline
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text ("Perfect Dental",
            textAlign: TextAlign.center,
            )
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  // const Text("First Tab"),
                  Center(
                    child: ElevatedButton(onPressed: ()=>logout(),
                     child:
                     const Text("Logout")),
                  ),
                
                ],

             ),
             
            ),
          ),
        
        );
  }
  logout() async{
  await authentication.logout();
  Get.offAll(const Loader());
  }
}