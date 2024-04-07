import 'package:flutter/material.dart';
import 'package:notiauto_system/ui/Form_mantenimiento/Form_mantenimiento_widget.dart';


class MaintenancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFBF3D5),
      appBar: AppBar(
        backgroundColor:Color(0xFF9CAFAA),
        title: Text('Registro de Mantenimientos'),
      ),
      body: Container(
        //color: Color.fromARGB(255, 223, 201, 143),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MaintenanceTable(),
          ],
        ),
      ),
    );
  }
}
