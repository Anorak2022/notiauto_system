import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  /* const HomePage({
    super.key,
  }); */

  var menuItems = ["Autos", "Clientes", "Mantenimientos", "Usuarios"];
  var menuItemsIcon = [Icons.local_taxi, Icons.people, Icons.car_crash_sharp, Icons.supervisor_account_rounded];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: menuItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                MediaQuery.of(context).size.height /
                0.5),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Icon(
                  menuItemsIcon[index],
                  color: Colors.black,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    menuItems[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          );
        });
  }
}
