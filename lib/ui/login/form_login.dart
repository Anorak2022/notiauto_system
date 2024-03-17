import 'package:flutter/material.dart';
import 'package:notiauto_system/ui/home/home_widget.dart';
import 'package:notiauto_system/ui/home/home_page.dart';
import 'package:notiauto_system/ui/registro/regristro_page.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  String _correo = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 201, 143),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: ListView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 90.0),
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 99.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/logo.png'),
                    ),
                    Text(
                      'NotiAuto System',
                      style: TextStyle(fontFamily: 'Arial', fontSize: 15.0),
                    ),
                    Divider(
                      height: 35.0,
                    ),
                    Text(
                      'Ingresar',
                      style: TextStyle(fontFamily: 'Calibri', fontSize: 25.0),
                    ),
                    Text(
                      'Hola, Que gusto verte de nuevo',
                      style: TextStyle(fontFamily: 'calibri', fontSize: 10.0),
                    ),
                    SizedBox(
                        width: 160.0,
                        height: 50.0,
                        child: Divider(color: Colors.black12)),
                    TextField(
                      enableIMEPersonalizedLearning: false,
                      autofocus: true,
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                          hintText: 'Correo Electronico',
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
                      height: 25.0,
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
                      height: 20.0,
                    ),
                    SizedBox(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 206, 94, 86)),
                        onPressed: () {
                          print("go to page");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text('Iniciar Sesion',
                            style: TextStyle(fontSize: 20.0)),
                      ),
                    ),
                    SizedBox(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 206, 94, 86)),
                        onPressed: () {
                          print("go to page");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegistroPage()));
                        },
                        child: Text('Registrarse',
                            style: TextStyle(fontSize: 20.0)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
