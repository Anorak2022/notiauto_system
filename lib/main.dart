import 'package:flutter/material.dart';
import 'package:notiauto_system/src/FormIngreso.dart';
import 'package:notiauto_system/src/Registro.dart';
import 'package:notiauto_system/src/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'NotiAuto System',
      debugShowCheckedModeBanner: false,
      home: FormIngreso(),
  
    );

    
  }
}

 