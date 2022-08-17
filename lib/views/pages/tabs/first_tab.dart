import 'package:dental_appointment_anuska_fyp/views/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

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
                    child: ElevatedButton(onPressed: (){
                      Get.offAll(const LoginScreen());
                    },
                     child:
                     const Text("Logout")),
                  ),
                
                  // InkWell(
                  //   onTap: () {
                  //     Get.offAll(const LoginScreen());
                  //   },
                  //   child: const Text("Logout",
                  //       style: TextStyle(
                  //         color: Colors.blue,
                  //         fontSize: 15,
                  //         fontWeight: FontWeight.bold,
                  //       )),
                  // ),
                ],

             ),
             
            ),
          ),
        
        );
    
      
  }
}