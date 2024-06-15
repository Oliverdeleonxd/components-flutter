// necesario para leer un json
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  
  List<dynamic> opciones = []; 

  _MenuProvider(){
    // cargarData();
  }
  
   Future<List<dynamic>> cargarData() async {

    // todo esto retorna un future
    // rootBundle.loadString('data/menu_opts.json').then((data){
    //   Map dataMap = json.decode(data);
    //   print(dataMap['nombreApp']);
    //   opciones = dataMap['rutas'];
    // });

    final resp = await rootBundle.loadString('data/menu_opts.json');
      
      Map dataMap = json.decode(resp);
      print(dataMap['rutas']);
      opciones = dataMap['rutas'];

      return opciones; 

    }

  }

// }

// creamos una estancia para exponer _MenuProvider
final menuProvider = new _MenuProvider();