import 'package:flutter/material.dart';
import 'package:flutterdevcamp/mentor_model.dart';

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

final List<MentorsModel> mentorsModel = [
  MentorsModel(
      'assets/simon.jpeg', 'Simon', 'https://www.linkedin.com/in/simonlightfoot/'),
  MentorsModel(
      'assets/franklin.jpeg', 'Franklin', 'https://www.linkedin.com/in/franklin-oladipo/'),
  MentorsModel(
      'assets/nishtha.jpeg', 'Nishtha', 'https://www.linkedin.com/in/nishtha-saraswat/'),
  MentorsModel(
      'assets/renuka.jpeg', 'Renuka', 'https://www.linkedin.com/in/renukakelkar/'),
  MentorsModel('assets/shree.jpeg', 'Shree', 'https://www.linkedin.com/in/shrihriday/'),
  MentorsModel(
      'assets/sumith.jpeg', 'Sumith', 'https://www.linkedin.com/in/sumith-damodaran/'),
  MentorsModel(
      'assets/yeasin.jpeg', 'Yeasin', 'https://www.linkedin.com/in/mdyeasinsheikh/'),
  MentorsModel(
      'assets/anthony.jpeg', 'Anthony', 'https://www.linkedin.com/in/atuoha-anthony/'),
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
          Image.asset('assets/devcamp_img.jpeg'),
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
                  backgroundColor: const MaterialStatePropertyAll<Color>(Colors.blue),
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
          SizedBox(
            height: 20,
          ),
          Visibility(
            visible: isTopicsVisible,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: topics.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (contxt, index) {
                return Row(
                  children: [
                    Text('${index + 1}.'),
                    const SizedBox(width: 4),
                    topics[index],
                  ],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Mentors list',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mentorsModel.length,
                itemBuilder: (context, index) {
                 // final mentor = mentorsModel[index];
                  return  SizedBox(height: 100,width: 120,
                    child: InkWell(
                      onTap: (){

                      },
                      child: Stack(
                        children: [
                          SizedBox(height: 100,width: 100,),
                          Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Column(
                                    children: [
                                      CircleAvatar(backgroundImage: AssetImage(mentorsModel[index].img),),
                                      SizedBox(height: 4,),
                                      Text(mentorsModel[index].name)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                          child:
                      
                          SizedBox(
                            height: 30,width: 30,
                              child:  Image.asset('assets/flutter.png')
                          ),
                                        ),
                          
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(' Write your feedback',style: TextStyle(fontSize:25),),
              SizedBox(width: 10,),
              Icon(Icons.check_circle,color: Colors.green,)
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              label:Text('Write your feedback'),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
            ),

          ),
          ElevatedButton(onPressed: (){},
              style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green),
                shape: WidgetStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ), ),
              child: Text('Submit your feedback',style: TextStyle(color: Colors.white),))

        ],
      ),
    );
  }
}
