import 'package:flutter/material.dart';


void main() {
 runApp(const MyApp());
}


class MyApp extends StatelessWidget {
 const MyApp({super.key});


 @override
 Widget build(BuildContext context) {
   return const MaterialApp(
     home: Scaffold(
       body:Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
 Text(
   "Estamos empezando el camino en Flutter",
   style: TextStyle(color:Colors.orange),
 ),
 Text(
   "Aprendiendo Flutter paso a paso",
   style: TextStyle(color:Colors.green),
 ),
 Text(
"¡Nos Espera un gran viaje",
style: TextStyle(color:Colors.blue),
 ),
],
       ),
     ),
   );
 }
}
