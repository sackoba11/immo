import 'package:flutter/material.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotels"),
      ),
      body: Center(child: Text("Page Hotels ")),
    );
  }
}
