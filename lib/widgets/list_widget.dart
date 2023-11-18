import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_player/sevieces/audio_service.dart';

class MyListTile extends StatefulWidget {
  final String title;
  final String subtitle;
  String sample;

  MyListTile(
      {required this.title,
      required this.subtitle,
      super.key,
      required this.sample});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  var audioItem =AssetsAudioPlayer();
  bool isPlay=false;
  /*
  bool? audioState(){
    //final audio = MyAudioServices();
    print (widget.sample);
    audioItem.open(Audio('assets/${widget.sample}'),autoStart: true);
    audioItem.play();
  }

   */
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Colors.blue,
        leading: const CircleAvatar(),
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
        trailing: IconButton(
          icon: const Icon(Icons.play_arrow),
          onPressed: () {

            audioItem.open(Audio('assets/${widget.sample}'),autoStart: true);
            audioItem.play();
            isPlay=true;

           
          },
        ),
      ),
    );
  }
}
/*
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
        trailing:  IconButton(icon:Icon(Icons.play_arrow),onPressed:(){
    var audio=AssetsAudioPlayer();
        try {

            // _audioPlay.open(Audio('assets/sample1.mp3'),autoStart: false);
            print('assets/$sample');
            audio.open(Audio('assets/$sample'),autoStart: false);
          } catch (e) {
            print('======Exception error while open ====== $e');
          }
    try {

   audio.play();
    print('play');
    } catch (e) {
    print('======Exception error while play====== $e');
    }
    }
        ,
        ),
      ),
    );
  }
}

 */
