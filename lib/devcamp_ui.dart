import 'package:flutter/material.dart';

class FlutterDevCampUI extends StatefulWidget {
  const FlutterDevCampUI({super.key});

  @override
  State<FlutterDevCampUI> createState() => _FlutterDevCampUIState();
}

class _FlutterDevCampUIState extends State<FlutterDevCampUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome to DevCamp'),
    );
  }
}
