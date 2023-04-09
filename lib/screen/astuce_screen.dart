import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Astuces extends StatefulWidget {
  const Astuces({super.key});

  @override
  State<Astuces> createState() => _AstucesState();
}

class _AstucesState extends State<Astuces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Astuces et Idées"),
      ),
      body: Center(child: Text("Page Astuces ")),
    );
  }
}
