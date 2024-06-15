
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
   HomePageTemp({super.key});

  final opcion = ['uno','Dos','Tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Componentes"),
      backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: _crearItemCorta()

      ),

    );
  }

  List<Widget> _crearItem(){

    List<Widget> lista =  [];
      
      for (String opt in opcion){
        final tempWidget = ListTile(
          title: Text(opt),
        );
          // operador de cascada
          lista..add(tempWidget)
               ..add(Divider(color: Colors.amber,));
      }

    return lista;
  }

  List<Widget> _crearItemCorta(){ 
    // operadot map de la lista 

    //var widget = opcion.map(( item ){
     return opcion.map(( item ){

      return Column(
        children: [
          ListTile(   

            leading:Icon(Icons.account_balance_wallet_rounded) , // el leading es el elemento que va al inicio
            trailing:Icon(Icons.account_box_rounded) , // este al final
            title: Text(item + "!"), 
            subtitle: Text("hola "),
            onTap: (){},
            // selectedColor: Colors.deepPurple,
            // tileColor: Colors.greenAccent,
            splashColor: Colors.lightBlue,
          ),
          Divider()
        ],
      );

    }).toList(); // Se convierte el lista

    // return widget ; 

  }


}