import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Form_IngresoAutos extends StatefulWidget {
  const Form_IngresoAutos({super.key});

  @override
  State<Form_IngresoAutos> createState() => _Form_IngresoAutosState();
}

class _Form_IngresoAutosState extends State<Form_IngresoAutos> {
  String _placa = '', _marca = '', _modelo = '', fabricacion = '';
  List<String> listaMarcas = <String>[
    "Toyota",
    "Nissan",
    "Kia",
    "Hyndai",
    "Mercedez",
    "Chevrolet",
    "Ford"
  ];
  String? selectitem = "Toyota";

  List<String> ListTrabajos = <String>[
    "Mantenimiento",
    "Revision",
    "Cambio de Partes"
  ];
  String? selectitemtrabajo = "Mantenimiento";

  TextEditingController textarea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 201, 143),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 600),
          child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 75.0),
              children: <Widget>[
                Text(
                  'Formulario de Ingreso de Vehiculo',
                  style: TextStyle(fontFamily: 'Arial', fontSize: 25.0),
                ),
                Divider(
                  height: 35.0,
                ),
                _placaVehiculo(),
                Divider(height: 20.0),
                // _MarcaHorizontal(),
                // Divider(
                //    height: 35.0,
                //   ),
                _TrabajoHorizontal(),
                Divider(
                  height: 35.0,
                ),
          
                _CostoServicio(),
                Divider(
                  height: 35.0,
                ),
          
                _Comentarios(),
                Divider(
                  height: 35.0,
                ),
                _Guardar()
              ]),
        ),
      ),
    );
  }

  Widget _placaVehiculo() {
    return TextField(
      enableIMEPersonalizedLearning: false,
      autofocus: true,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          hintText: 'Placa del Vehiculo:',
          labelText: 'Ingrese la placa del vehiculo:',
          suffixIcon: Icon(Icons.verified),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onSubmitted: (valor) {
        _placa = valor;
        print('El Correo es: $_placa');
      },
    );
  }

  Widget _MarcaVehiculo() {
    return TextField(
      enableIMEPersonalizedLearning: false,
      autofocus: true,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          hintText: 'Ingrese la Marca del Vehiculo:',
          labelText: 'Ingrese la Marca del vehiculo:',
          suffixIcon: Icon(Icons.verified),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onSubmitted: (valor) {
        _placa = valor;
        print('El Correo es: $_placa');
      },
    );
  }

  Widget _droplist() {
    return DropdownButton(
      value: selectitem,
      items: listaMarcas
          .map((item) =>
              DropdownMenuItem<String>(value: item, child: Text(item)))
          .toList(),
      onChanged: (item) => setState(() => selectitem = item),
    );
  }

  Widget _MarcaHorizontal() {
    return Row(
      children: [
        Divider(
          height: 25.0,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 93, 87, 172), width: 2.0),
              borderRadius: BorderRadius.circular(20.0)),
          child: Text('Selecciona La Marca del Vehiculo'),
        ),
        _droplist()
      ],
    );
  }

  Widget _Comentarios() {
    return Column(
      children: [
        TextField(
            controller: textarea,
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            decoration: InputDecoration(
                hintText: "Comentarios",
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 93, 87, 172)))))
      ],
    );
  }

  Widget _Listatrabajoslist() {
    return DropdownButton(
      value: selectitemtrabajo,
      items: ListTrabajos.map((item) =>
          DropdownMenuItem<String>(value: item, child: Text(item))).toList(),
      onChanged: (item) => setState(() => selectitemtrabajo = item),
    );
  }

  Widget _TrabajoHorizontal() {
    return Row(
      children: [
        Divider(
          height: 25.0,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 93, 87, 172), width: 2.0),
              borderRadius: BorderRadius.circular(20.0)),
          child: Text('Selecciona El Tipo de Trabajo Realizado'),
        ),
        _Listatrabajoslist()
      ],
    );
  }

  Widget _CostoServicio() {
    return TextField(
      enableIMEPersonalizedLearning: false,
      autofocus: true,
      textCapitalization: TextCapitalization.characters,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Precio a Cancelar:',
          labelText: 'Ingrese el monto del Servicio:',
          suffixIcon: Icon(Icons.monetization_on_rounded),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onSubmitted: (valor) {
        _placa = valor;
        print('El Correo es: $_placa');
      },
    );
  }

  Widget _Guardar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 206, 94, 86)),
            onPressed: () {},
            child: Text(
              'Guardar',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            )),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 206, 94, 86)),
            onPressed: () {},
            child: Text(
              'Salir',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
