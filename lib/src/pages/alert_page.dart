
import 'dart:ffi';

import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        leading: IconButton(
           onPressed: (){
           // navegacion clasica
           Navigator.pop(context);
           }, 
           icon: Icon(Icons.arrow_back),

         ),
         backgroundColor: Colors.amber,
         shadowColor: Colors.cyan,
         elevation: 10.0,

      )
    );
  }
}