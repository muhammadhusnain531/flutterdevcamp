import 'package:flutter/material.dart';

class FlutterDevCampUI extends StatefulWidget {
  const FlutterDevCampUI({super.key});

  @override
  State<FlutterDevCampUI> createState() => _FlutterDevCampUIState();
}
final List<Widget> topics =[
  Text('1 Introduction to flutter'),
  Text('2 Flutter Basics and Layout'),
  Text('3 Intro to state management Riverpod with API'),
  Text('4 Riverpod with Firebase'),
  Text('5 Flutter and API Integration'),
  Text('6 Flutter with Firebase database , storage'),
  Text('7 Riverpod With advance Concepts'),
];
class _FlutterDevCampUIState extends State<FlutterDevCampUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Welcome to DevCamp',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset('assets/poster.jpg'),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                  const WidgetStatePropertyAll<Color>(Colors.blue),
                  shape: const WidgetStatePropertyAll<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ))),
              child: Text(
                'Click Me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListView.builder(shrinkWrap: true,
          itemCount: topics.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,)
        ],
      ),
    );
  }
}
