import 'package:flutter/material.dart';

class Vente extends StatefulWidget {
  const Vente({super.key});

  @override
  State<Vente> createState() => _VenteState();
}

class _VenteState extends State<Vente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vente"),
      ),
      body: Center(child: Text("Page Vente ")),
    );
  }
}
