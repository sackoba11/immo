import 'package:flutter/material.dart';

class Residence extends StatefulWidget {
  const Residence({super.key});

  @override
  State<Residence> createState() => _ResidenceState();
}

class _ResidenceState extends State<Residence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Residence"),
      ),
      body: Center(child: Text("Page Residence ")),
    );
  }
}
