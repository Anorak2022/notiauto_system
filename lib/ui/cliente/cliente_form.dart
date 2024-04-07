import 'package:flutter/material.dart';

class ClienteForm extends StatefulWidget {
  const ClienteForm({super.key});

  @override
  _ClienteFormState createState() => _ClienteFormState();
}

class _ClienteFormState extends State<ClienteForm> {
  // Controladores para los campos de texto
  TextEditingController nombreController = TextEditingController();
  TextEditingController duiController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();

  // Variables para los dropdowns
  String departamentoSeleccionado = "San Salvador";
  List<String> departamentos = ['San Salvador', 'Santa Ana', 'San Miguel'];

  String municipioSeleccionado = "San Salvador";
  List<String> municipios = [];

  Map<String, List<String>> municipiosPorDepartamento = {
    'San Salvador': ['San Salvador', 'Mejicanos', 'San Martin'],
    'Santa Ana': ['Santa Ana', 'Metapan', 'Coatepeque'],
    'San Miguel': ['San Miguel', 'Lolotique', 'Chinameca'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Formulario de Cliente'),
      ), */
      backgroundColor: Color.fromARGB(255, 223, 201, 143),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: nombreController,
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                TextFormField(
                  controller: duiController,
                  decoration: InputDecoration(labelText: 'DUI'),
                ),
                TextFormField(
                  controller: direccionController,
                  decoration: InputDecoration(labelText: 'Dirección'),
                ),
                DropdownButtonFormField(
                  value: departamentoSeleccionado,
                  onChanged: (value) {
                    setState(() {
                      departamentoSeleccionado = value!;
                      municipioSeleccionado = municipiosPorDepartamento[value]![0];
                      municipios = municipiosPorDepartamento[value]!;
                    });
                  },
                  items: departamentos.map((departamento) {
                    return DropdownMenuItem(
                      value: departamento,
                      child: Text(departamento),
                    );
                  }).toList(),
                  decoration: InputDecoration(labelText: 'Departamento'),
                ),
                DropdownButtonFormField(
                  value: municipioSeleccionado,
                  onChanged: (value) {
                    setState(() {
                      municipioSeleccionado = value!;
                    });
                  },
                  items: municipiosPorDepartamento[departamentoSeleccionado]!
                      .map((municipio) {
                    return DropdownMenuItem(
                      value: municipio,
                      child: Text(municipio),
                    );
                  }).toList(),
                  decoration: InputDecoration(labelText: 'Municipio'),
                ),
                TextFormField(
                  controller: correoController,
                  decoration: InputDecoration(labelText: 'Correo'),
                ),
                TextFormField(
                  controller: telefonoController,
                  decoration: InputDecoration(labelText: 'Teléfono'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Aquí puedes manejar los datos ingresados por el usuario
                    // Por ejemplo, puedes imprimirlos en la consola
                    print('Nombre: ${nombreController.text}');
                    print('DUI: ${duiController.text}');
                    print('Dirección: ${direccionController.text}');
                    print('Departamento: $departamentoSeleccionado');
                    print('Municipio: $municipioSeleccionado');
                    print('Correo: ${correoController.text}');
                    print('Teléfono: ${telefonoController.text}');
                  },
                  child: Text('Guardar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
