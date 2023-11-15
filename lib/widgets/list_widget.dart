import 'package:flutter/material.dart';
import 'package:flutter_audio_player/sevieces/audio_service.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  String sample;


  MyListTile({required this.title, required this.subtitle, super.key,required this.sample});

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
          print (sample);
          audio.initAudio(sample);
          audio.playSound();
        } ,),
      ),
    );
  }
}
