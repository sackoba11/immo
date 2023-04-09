import 'package:flutter/material.dart';
import 'package:immo/widgets/video_play.dart';

class Abonner extends StatefulWidget {
  const Abonner({super.key});

  @override
  State<Abonner> createState() => _AbonnerState();
}

class _AbonnerState extends State<Abonner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abonnement"),
      ),
      body: const VideoPlayerScreen(),
      // Center(child: Text("Page Abonnement ")),
    );
  }
}
