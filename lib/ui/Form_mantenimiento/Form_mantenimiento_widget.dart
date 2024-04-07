import 'package:flutter/material.dart';

class MaintenanceTable extends StatefulWidget {
  @override
  _MaintenanceTableState createState() => _MaintenanceTableState();
}

class _MaintenanceTableState extends State<MaintenanceTable> {
  List<Map<String, dynamic>> maintenanceRecords = [
    {'vehicle': 'Toyota Camry', 'maintenance': 'Oil Change', 'date': '2024-04-01'},
    {'vehicle': 'Honda Civic', 'maintenance': 'Tire Rotation', 'date': '2024-03-25'},
    // Agrega más registros aquí si es necesario
  ];

  List<Map<String, dynamic>> filteredRecords = [];

  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredRecords = maintenanceRecords;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Buscar vehículo',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              setState(() {
                filteredRecords = maintenanceRecords
                    .where((record) => record['vehicle'].toLowerCase().contains(value.toLowerCase()))
                    .toList();
              });
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingRowColor: MaterialStateColor.resolveWith((states) => Colors.black),
                columnSpacing: 30.0,
                columns: const [
                  DataColumn(label: Text('Vehículo', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                  DataColumn(label: Text('Mantenimiento', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                  DataColumn(label: Text('Fecha', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                ],
                rows: filteredRecords
                    .asMap()
                    .entries
                    .map(
                      (entry) => DataRow(
                        color: MaterialStateColor.resolveWith((states) => entry.key % 2 == 0 ? Colors.white : Colors.grey), // Establecer el color de fondo de las filas alternativas
                        cells: [
                          DataCell(Text(entry.value['vehicle'])),
                          DataCell(Text(entry.value['maintenance'])),
                          DataCell(Text(entry.value['date'])),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
