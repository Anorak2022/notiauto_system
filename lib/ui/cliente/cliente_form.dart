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
  String nombre = "";
  List<String> departamentos = ['San Salvador', 'Santa Ana', 'San Miguel'];
  String? selectitem = 'San Salvador';

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
                Text(
                  'Registro y Mantenimeinto de Clientes',
                  style: TextStyle(fontFamily: 'calibri', fontSize: 30.0),
                ),
                Divider(
                  height: 40.0,
                ),
                TextField(
                  enableIMEPersonalizedLearning: false,
                  obscureText: true,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      hintText: 'Nombre',
                      labelText: 'Ingrese su Nombre:',
                      suffixIcon: Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    nombre = valor;
                    print('El Password es: $nombre');
                  },
                ),
                Divider(
                  height: 10.0,
                ),
                TextField(
                  enableIMEPersonalizedLearning: false,
                  obscureText: true,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      hintText: 'DUI',
                      labelText: 'Ingrese su DUI:',
                      suffixIcon: Icon(Icons.numbers),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    nombre = valor;
                    print('El Password es: $nombre');
                  },
                ),
                Divider(
                  height: 10,
                ),
                TextField(
                  enableIMEPersonalizedLearning: false,
                  obscureText: true,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      hintText: 'Direccion',
                      labelText: 'Ingrese su direccion:',
                      suffixIcon: Icon(Icons.maps_home_work),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    nombre = valor;
                    print('El Password es: $nombre');
                  },
                ),
                _ListaHdepartamentos(),
                Divider(height: 15.0),
                _correo(),
                Divider(height: 15.0),
                _telefono(),
                Divider(height: 25.0),
                _botones()
              ],
            ),
          ),
        ),
      ),
    );
  }

  //creacion de dropdownlist
  Widget _Listadepartamentos() {
    return DropdownButton(
      value: selectitem,
      items: departamentos
          .map((item) =>
              DropdownMenuItem<String>(value: item, child: Text(item)))
          .toList(),
      onChanged: (item) => setState(() => selectitem = item),
    );
  }

  Widget _ListaHdepartamentos() {
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
          child: Text('Selecciona el departamento'),
        ),
        _Listadepartamentos()
      ],
    );
  }

  Widget _correo() {
    return TextField(
      enableIMEPersonalizedLearning: false,
      autofocus: true,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          hintText: 'Correo Electronico:',
          labelText: 'Ingrese correo del cliente:',
          suffixIcon: Icon(Icons.email),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onSubmitted: (valor) {
        nombre = valor;
        print('El Correo es: $nombre');
      },
    );
  }

  Widget _telefono() {
    return TextField(
      enableIMEPersonalizedLearning: false,
      autofocus: true,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          hintText: 'Correo Electronico:',
          labelText: 'Ingrese correo del cliente:',
          suffixIcon: Icon(Icons.numbers_rounded),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onSubmitted: (valor) {
        nombre = valor;
        print('El Correo es: $nombre');
      },
    );
  }

  Widget _botones() {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                  // Aquí puedes manejar los datos ingresados por el usuario
                  // Por ejemplo, puedes imprimirlos en la consola
                  print('Nombre: ${nombreController.text}');
                  print('DUI: ${duiController.text}');
                  print('Dirección: ${direccionController.text}');

                  print('Municipio: $municipioSeleccionado');
                  print('Correo: ${correoController.text}');
                  print('Teléfono: ${telefonoController.text}');
                },
                child: Text('Guardar'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )))),
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                  // Aquí puedes manejar los datos ingresados por el usuario
                  // Por ejemplo, puedes imprimirlos en la consola
                  print('Nombre: ${nombreController.text}');
                  print('DUI: ${duiController.text}');
                  print('Dirección: ${direccionController.text}');

                  print('Municipio: $municipioSeleccionado');
                  print('Correo: ${correoController.text}');
                  print('Teléfono: ${telefonoController.text}');
                },
                child: Text('Salir'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ))))
      ],
    );
  }
}
