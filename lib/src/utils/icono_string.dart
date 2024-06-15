
import 'package:flutter/material.dart';

final _icon = <String, IconData> {

  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open
   
};

Icon getIcon( String nombreIcono){

  return Icon(_icon[nombreIcono], color: Color.fromARGB(255, 7, 181, 255));

}