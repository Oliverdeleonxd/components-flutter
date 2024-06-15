
// import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      initialRoute: '/',
      routes: getApplicationRoutes(),

      // si las ruta no estan definidades se dispara el onGenerateRoute
      onGenerateRoute: (RouteSettings settting){
       // print('route: ${settting.name} ');
        return MaterialPageRoute(builder: (BuildContext context) => AlertPage()
        );

      },

    );
  }
}