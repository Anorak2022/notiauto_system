import 'package:flutter/material.dart';

class VehiculoClientePage extends StatefulWidget {
  const VehiculoClientePage({super.key});

  @override
  State<VehiculoClientePage> createState() => _VehiculoClientePage();
}

class _VehiculoClientePage extends State<VehiculoClientePage> {
  final String nombreCliente = "Juan Perez";
  final int cantidadVehiculos = 2;
  final List<Vehiculo> vehiculos = [
    Vehiculo(marca: "Toyota", anio: 2018, placa: "ABC123"),
    Vehiculo(marca: "Honda", anio: 2019, placa: "XYZ789"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        backgroundColor: Color.fromARGB(255, 220, 199, 145),
      body: ListView(
        children: [

          Text('Detalle de vehiculos por cliente',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 25.0
                )      ),

          ListTile(
            
            title: Text('Nombre del Cliente'),
            subtitle: Text(nombreCliente),
          ),
          ListTile(
            
            title: Text('Cantidad de Vehículos'),
                           
            
            subtitle: Text(cantidadVehiculos.toString()),
          ),
          for (var vehiculo in vehiculos)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text('Marca del Vehículo'),
                  subtitle: Text(vehiculo.marca),
                ),
                ListTile(
                  title: Text('Año del Vehículo'),
                  subtitle: Text(vehiculo.anio.toString()),
                ),
                ListTile(
                  title: Text('Placa del Vehículo'),
                  subtitle: Text(vehiculo.placa),
                ),
              
                Divider(),
              ],
            ),
            
        ],
   
        
        
      ),
      
    );
    
  }
 
  
}



class Vehiculo {
  final String marca;
  final int anio;
  final String placa;

  Vehiculo({required this.marca, required this.anio, required this.placa});

  
}
