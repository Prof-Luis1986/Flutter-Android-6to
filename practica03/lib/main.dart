import 'package:flutter/material.dart';


void main() {
 runApp(const MyApp());
}


class MyApp extends StatelessWidget {
 const MyApp({super.key});


 @override
 Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Cambiar Colores',
     home: CambiarColores(),
   );
 }
}


class CambiarColores extends StatefulWidget {
 const CambiarColores({super.key});


 @override
 State<CambiarColores> createState() => _CambiarColoresState();
}


class _CambiarColoresState extends State<CambiarColores> {
 Color fondoColor = Colors.white;


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: fondoColor,
     body: Center(
       child: ElevatedButton(onPressed: () {
         setState(() {
           fondoColor =
               Color((0xFFFFFFFF & DateTime.now().millisecondsSinceEpoch))
                   .withOpacity(1.0);
         });
       }, child: const Text('Cambiar Color')),
      
     ),
   );
 }
}
