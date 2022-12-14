import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool obscureText;
  final Function? myValidator;
  const MyField(
      {Key? key,
      required this.controller,
      this.text="Email",
       this.obscureText=false, 
       this.myValidator, }) 
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText:'Enter your $text',
          border: const OutlineInputBorder(), 
        ),
        validator: (value){
          if(value!.isEmpty){
            return "$text is required";
          }
          return myValidator!(value);
        }
      ),
    );
  }
}