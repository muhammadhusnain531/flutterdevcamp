import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
      backgroundColor: Colors.blue,

      title: Text('Flutter DevCamp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      
    ),);
  }
}

