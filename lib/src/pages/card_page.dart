

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: [
          _cardTipo1()
        ],
      ),
    );
  }
  
  _cardTipo1() {

    return Card(
      color: Colors.deepOrange,
      // shadowColor: Colors.deepOrangeAccent,
      child: Column(
        
        children: [
          ListTile(
            title: Text('Hola mundo'),
          )
        ],
      ),
    );

  }
}