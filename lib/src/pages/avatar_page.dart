
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        leading: IconButton(
          
          onPressed: (){
           
          }, 
          icon: Icon(Icons.arrow_back),
         )
      )
    );
  }
}