import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:flutter_audio_player/widgets/list_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Audio player'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> samples = [
    'sample1.mp3',
    'sample2.mp3',
    'sample3.mp3',
    'sample4.mp3',
    'sample5.mp3',
    'sample6.mp3',
    'sample7.mp3',
    'sample8.mp3',
    'sample9.mp3',
    'sample10.mp3'
  ];
/*
  void initStat() {
    for (var i = 0; i < 10; i++) {
      var audioItem = AssetsAudioPlayer();
      audioItem.open(Audio('assets/samples[i]'), autoStart: true);
      //    MyAudioServices.initAudio(samples[i]);
    }
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  10,
                  (index) => MyListTile(
                      title: '${index + 1}',
                      subtitle: 'sample ${index + 1}',
                      sample: samples[index]))
            ],
          ),
        ),
      ),
    );
  }
}
