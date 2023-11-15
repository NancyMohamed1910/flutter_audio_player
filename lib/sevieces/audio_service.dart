import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_player/audio_sample.dart';
class MyAudioServices{

   var _audioPlay=AssetsAudioPlayer();
    void initAudio(String s){
    try {
      //_audioPlay.open(Audio('assets/${s}'),autoStart: false);
      _audioPlay.open(Audio('assets/${s}'),autoStart: false);
        } catch (e) {
      print('======error while play====== $e');
    }

  }
  void playSound(){
    try {

      _audioPlay.play();
    } catch (e) {
      print('======error while play====== $e');
    }
  }
  void stopSound(){
    try {
      _audioPlay.stop();
    } catch (e) {
      print('======error whilw stop====== $e');
    }
  }

}