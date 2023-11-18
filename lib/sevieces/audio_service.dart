import 'package:assets_audio_player/assets_audio_player.dart';

class MyAudioServices {
  final _audioPlay = AssetsAudioPlayer();
  void initAudio(String s) {
    try {
      // _audioPlay.open(Audio('assets/sample1.mp3'),autoStart: false);
      //print('assets/$s');
      // _audioPlay.open(Audio('assets/$s'), autoStart: false);
      _audioPlay.open(Audio('assets/$s'), autoStart: false);
    } catch (e) {
      print('======Exception error while open ====== $e');
    }
  }

  void playSound() {
    try {
      _audioPlay.play();
//print('play');
    } catch (e) {
      print('======Exception error while play====== $e');
    }
  }

  void stopSound() {
    try {
      _audioPlay.stop();
    } catch (e) {
      print('====== Exception error while stop====== $e');
    }
  }
}
