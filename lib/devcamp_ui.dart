import 'package:flutter/material.dart';

class FlutterDevCampUI extends StatefulWidget {
  const FlutterDevCampUI({super.key});

  @override
  State<FlutterDevCampUI> createState() => _FlutterDevCampUIState();
}
 bool isTopicsVisible = false;
final List<Widget> topics = [
  Text('Introduction to flutter'),
  Text('Flutter Basics and Layout'),
  Text('Intro to state management Riverpod with API'),
  Text('Riverpod with Firebase'),
  Text('Flutter and API Integration'),
  Text('Flutter with Firebase database , storage'),
  Text('Riverpod With advance Concepts'),
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
              onPressed: () {
                setState(() {
                 isTopicsVisible = !isTopicsVisible;
                });
              },
              style: ButtonStyle(
                  backgroundColor:
                  const MaterialStatePropertyAll<Color>(Colors.blue),
                  shape: const MaterialStatePropertyAll<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ))),
              child: Text(
                '${isTopicsVisible ? 'Hide' : 'Reveal'} Topics',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Visibility(
            visible: isTopicsVisible,
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: topics.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (contxt, index) {
                  return Row(
                    children: [
                      Text('${index + 1}.',),
                      const SizedBox(width: 4),
                      topics[index],
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
