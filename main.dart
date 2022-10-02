import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Audio Player'),
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
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
              player.play(AssetSource('theme_01.mp3'));
              },
              child: const Text('Play Audio'),
            ),

            ElevatedButton(onPressed: (){
              player.stop();
            }, child:const Text('Stop Audio')),

            ElevatedButton(onPressed: (){
              player.pause();
            }, child:const Text('Pause ')),

            ElevatedButton(onPressed: (){
              player.resume();
            }, child:const Text('Resume')),

          ],
        ),
      ),
    );
  }
}
