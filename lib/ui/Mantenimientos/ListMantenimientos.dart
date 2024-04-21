import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListMantenimientos extends StatefulWidget {
  const ListMantenimientos({super.key});

  @override
  State<ListMantenimientos> createState() => _ListMantenimientosState();
}

class _ListMantenimientosState extends State<ListMantenimientos> {
  List<String> list_cars = <String>['Corolla Gris P485-156', 'Mazda Rojo P456','Subaru Azul PAB2-003'];
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 201, 143),
      appBar: AppBar(centerTitle: true,
 title: Text('Listado de Mantenimiento de Vehiculos'),
 backgroundColor: Color.fromARGB(255, 223, 201, 143), ),
      

      body: ListView.builder(

        
        itemCount: list_cars.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: const Color.fromRGBO(168, 195, 188, 1),
            child: ListTile(
              title: Text(list_cars[index]),
          )
          );
        }
      )

      
      );
  }

  Widget _Encabezado(){
    return Text("Registro y Mantenimeinto de Clientes",
                  style: TextStyle(fontFamily: 'calibri', fontSize: 30.0),
                );
  }
}
