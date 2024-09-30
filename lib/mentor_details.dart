import 'package:flutter/material.dart';
import 'package:flutterdevcamp/mentor_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MentorsDetails extends StatelessWidget {
  const MentorsDetails({required this.mentorsModel, super.key});

  final MentorsModel mentorsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text('Mentors Details',style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold),),

      ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Hero(tag: 'mentor-img', child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(mentorsModel.img))),
              const SizedBox(height: 10),

              Center(
                child: Row(
                  children: [
                    Text('LinkedIn Profile => ',
                      style: TextStyle(fontSize: 18),),
                    InkWell(
                      onTap: () {
                       _launchUrl(Uri.parse(mentorsModel.url));
                      },
                      child: Text(

                        mentorsModel.name,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          decorationColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}


Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
