import 'package:flutter/material.dart';

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
                
             ),
            ),
          ),
        
        );
    
      
  }
}