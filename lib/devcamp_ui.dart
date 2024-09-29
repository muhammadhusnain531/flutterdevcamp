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
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Text('Welcome to DevCamp',style: TextStyle(fontSize: 25,),),
          SizedBox(height: 20,),
          Image.asset('assets/poster.jpg'),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.blue),
                  shape: const WidgetStatePropertyAll<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(12)),
                    )
                  )
                  ), child: Text('Click Me',style: TextStyle(color: Colors.white),),
                ),
                
          )
        ],
      ),
    );
  }
}
