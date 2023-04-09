import 'package:flutter/material.dart';

class Espace extends StatefulWidget {
  const Espace({super.key});

  @override
  State<Espace> createState() => _EspaceState();
}

class _EspaceState extends State<Espace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Espace Evenementiel"),
      ),
      body: Center(child: Text("Page Espace Evenementiel ")),
    );
  }
}
