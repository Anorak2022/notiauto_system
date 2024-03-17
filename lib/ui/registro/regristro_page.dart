import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  String _correo = '';
  String _password = '';
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 201, 143),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 700),
            child: ListView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 75.0),
              children: <Widget>[
                Text(
                  'Registrarse',
                  style: TextStyle(fontFamily: 'Calibri', fontSize: 35.0),
                ),
                Divider(
                  height: 50.0,
                ),
                TextField(
                  enableIMEPersonalizedLearning: false,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      hintText: 'Correo:',
                      labelText: 'Ingrese Correo Electronico:',
                      suffixIcon: Icon(Icons.alternate_email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    _correo = valor;
                    print('El Correo es: $_correo');
                  },
                ),
                Divider(
                  height: 30.0,
                ),
                TextField(
                  enableIMEPersonalizedLearning: false,
                  obscureText: true,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Ingrese su Password:',
                      suffixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    _correo = valor;
                    print('El Password es: $_password');
                  },
                ),
                Divider(
                  height: 75.0,
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Flexible(
                      child: Text(
                        'He leído y acepto los términos y condiciones y la política de privacidad : ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/
                    Checkbox(
                      value: this.value,
                      onChanged: (value) {
                        setState(() {
                          this.value = true;
                        });
                      },
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                Divider(
                  height: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      backgroundColor: const Color.fromARGB(255, 206, 94, 86),
                      textStyle:
                          const TextStyle(color: Color.fromARGB(255, 7, 1, 0))),
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Divider(
                  height: 30.0,
                ),
                Text('Ya tienes una cuenta Ingresar')
              ],
            ),
          ),
        ));
  }
}
