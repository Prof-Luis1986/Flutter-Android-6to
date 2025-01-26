import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ocultar banner de debug
      title: 'Práctica 04-Suma',
      theme: ThemeData(primarySwatch: Colors.blue), // Tema de la aplicación
      home: const SumaScreen(), // Pantalla principal
    );
  }
}

class SumaScreen extends StatefulWidget {
  const SumaScreen({Key? Key}) : super(key: Key);

  @override
  State<SumaScreen> createState() => _SumaScreenState();
}

class _SumaScreenState extends State<SumaScreen> {
  //Declaramos los controladores para los campos de texto
  final TextEditingController txtNum1 = TextEditingController();
  final TextEditingController txtNum2 = TextEditingController();

  //Declaramos una variable para almacenar el resultado
  String lblResultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Suma de dos números'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: txtNum1, //Controlador del campo de texto
                keyboardType: TextInputType.number, //Solo permite números
                decoration: const InputDecoration(labelText: 'Número 1',
                border: OutlineInputBorder(), //Borde del campo de texto
                ),
              ),
              const SizedBox(height: 10), //Espacio entre los campos de texto
              TextField(
                controller: txtNum2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Número 2',
                border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16.0,), //Espacio entre los campos de texto
              Text(
                'Resultado: $lblResultado', //Texto del resultado
                style:const TextStyle(fontSize: 20), //Estilo del texto
              ), 
              const SizedBox(height: 16.0), //Espacio entre los campos de texto y el boton
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    //Convertimos los textos en numeros y calculamos la suma
                    final num1 = double.tryParse(txtNum1.text) ?? 0;
                    final num2 = double.tryParse(txtNum2.text) ?? 0;
                    lblResultado = (num1 + num2).toString();//Guardamos el resultado
                  });
                },
                child: const Text('Calcular suma'), //Texto del botón
              ),
              const SizedBox(height: 16.0), //Espacio entre el botón y el borde inferior
              ElevatedButton(onPressed: (){
                setState(() {
                  txtNum1.clear(); //Limpiamos el campo de texto
                  txtNum2.clear(); //Limpiamos el campo de texto
                  lblResultado = ""; //Limpiamos el resultado
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, //Color de fondo del botón
              ),
               child: const Text('Borrar'), //Texto del botón
              ),
              ],
          ),
        )
        );
  }
}
