import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text('NotiAuto System'),
      ), */
      backgroundColor: const Color.fromARGB(255, 223, 201, 143),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
                child: _SampleCard(
              cardName: 'Clientes',
              cardText: "Información de clientes",
            )),
            Card.filled(
                child: _SampleCard(
              cardName: 'Ingreso',
              cardText: "Ingresar vehiculo para mantenimiento",
            )),
            /* Card.outlined(child: _SampleCard(cardName: 'Configuraciones')), */
          ],
        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName, required this.cardText});
  final String cardName;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 100,
      child: Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.album),
              title: Text(cardName),
              subtitle: Text(cardText),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('VER'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );

    /* return SizedBox(
      width: 600,
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('VER'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
                   const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    ); */
  }
}
