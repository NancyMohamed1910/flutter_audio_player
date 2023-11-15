import 'package:flutter/material.dart';
import 'package:flutter_audio_player/sevieces/audio_service.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  //List<String> samples =['sample1','sample2','sample3','sample4','sample5','sample6'];
  //String sample;


  MyListTile({required this.title, required this.subtitle, super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Colors.blue,
        leading: const CircleAvatar(),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(icon:const Icon(Icons.play_arrow),onPressed:(){
          final audio=MyAudioServices();
          //MyAudioServices.playSound(); //calling of static method
          audio.playSound();
        } ,),
      ),
    );
  }
}
