import 'package:flutter/material.dart';

class Bureau extends StatefulWidget {
  const Bureau({super.key});

  @override
  State<Bureau> createState() => _BureauState();
}

class _BureauState extends State<Bureau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bureau"),
      ),
      body: Center(child: Text("Page Bureau ")),
    );
  }
}
