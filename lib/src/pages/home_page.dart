import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/provider/menu_provider.dart';
import 'package:componentes/src/utils/icono_string.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Componentes"),
        backgroundColor: Color.fromARGB(255, 58, 203, 232),
      ),
      body: _Lista(),
    );
  }
  
  Widget _Lista() {

    // esta opcion no es viable porque pareceria que la app esta congelada mientras carga
    // menuProvider.cargarData().then((opciones){
    //   print('');
    //   print(opciones);
    // });


    

    return FutureBuilder(
      future: menuProvider.cargarData(), 
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data!,context),  
        );

      },
    );


  }
  
  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
   
    final List<Widget> opciones = [];

    data.forEach((opt) { 

      final WidgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_right, color: Color.fromARGB(255, 64, 169, 255)),
        splashColor: const Color.fromARGB(255, 161, 238, 248),
        onTap: (){
          
          // navegacion clasica
          // final route = MaterialPageRoute(
          //   builder: (context){
          //     return AlertPage();
          //   });
          // Navigator.push(context, route);


          Navigator.pushNamed(context, opt['ruta']);

        },
      );

      opciones..add(WidgetTemp)
              ..add(Divider());

    });

    return opciones;
  }
}
