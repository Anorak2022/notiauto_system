import 'package:flutter/material.dart';
import 'package:notiauto_system/ui/home/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // barra superior
      appBar: AppBar(title: const Text("NotiAutoSystem")),

      backgroundColor: const Color.fromARGB(255, 223, 201, 143),

      // barra inferior
      // https://www.youtube.com/watch?v=leA2nZYM9jY&list=PLRGDnb6LspvdEBxIbPMgQBOdr2zctSqRS
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Config"),
        ],
      ),

      body: getBodyBuilder(),
    );
  }

  getBodyBuilder() {
    return (_currentIndex == 0) ? HomeWidget() : Container();
  }
}
