import 'package:dental_appointment_anuska_fyp/views/components/my_button.dart';
import 'package:dental_appointment_anuska_fyp/views/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/my_field.dart';


class SignupScreen extends StatelessWidget {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();
  final usernameController=TextEditingController();
  final nameController=TextEditingController();
  final phoneController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 241, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // Image.asset(
                  //   "assets/images/logo.png",
                  //   height: 200,
                  //   width: 200,
                  // ),
                  const Text("Register a New Account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: MyField(
                      controller: emailController,
                      myValidator: (value){
                        if(!value.toString().contains("@")){
                          return"Email is not valid";
                        }
                        return null;
                      }
                    ),
                  ),
                  MyField(
                    text: "Username",
                    controller: usernameController,
                    myValidator: (value)=>null 
                    ),
                    
                    MyField(
                    text: "Name",
                    controller: nameController,
                    myValidator: (value)=>null 
                    ),
                    MyField(
                    text: "Phone Number",
                    controller: phoneController,
                    myValidator: (value)=>null 
                    ),
                    MyField(
                    text: "Password",
                    obscureText: true,
                    controller: passwordController,
                    myValidator: (value)=>null 
                    ),
                    MyField(
                    text: "Confirm Password",
                    obscureText: true,
                    controller: confirmPasswordController,
                    myValidator: (value)=>null 
                    ),
                    MyButton(onTap: (){
                      var isFormValid=formKey.currentState!.validate();
                      if(isFormValid){
                        var data={"email":emailController.text};
                        Get.to(LoginScreen());
                      }
                    }),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Already have an account?"),
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(LoginScreen());
                      },
                      child: const Text("Login",
                      style: TextStyle(
                        color:Colors.blueGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                    )
              ],),
            ),
          ),
        ))
    );
  }
}