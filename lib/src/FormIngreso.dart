import 'package:flutter/material.dart';

class FormIngreso extends StatefulWidget {
  const FormIngreso({super.key});

  @override
  State<FormIngreso> createState() => _FormIngresoState();
}

class _FormIngresoState extends State<FormIngreso> {

  String _placa='', _marca='', _modelo='', fabricacion='';
  List<String> listaMarcas = <String>["Toyota","Nissan","Kia","Hyndai","Mercedez","Chevrolet","Ford"];

  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 201, 143),
       body: ListView(
         padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 75.0
        ),
        children: <Widget>[
          Text('Formulario de Ingreso de Vehiculo',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 25.0
          ),
          ),
          Divider(
            height: 20.0,
          ),
          TextField(
                 enableIMEPersonalizedLearning: false,
                 autofocus: true,
                 textCapitalization: TextCapitalization.characters,
                 decoration: InputDecoration(
                  hintText: 'Placa del Vehiculo:',
                  labelText: 'Ingrese la placa del vehiculo:',
                  suffixIcon: Icon(
                    Icons.verified
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                    )
                 ),
                 onSubmitted: (valor){
                  _placa= valor;
                  print('El Correo es: $_placa');
                 }, 
              ),
              Divider(
                height: 25.0,
              ),
            
        ],
       )

    );



  }
}