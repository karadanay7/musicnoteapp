import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
     child: TextButton(
       onPressed: () async {
         playSound(soundNumber);
       },
       style: TextButton.styleFrom(backgroundColor: color),
       child: const Text(
         "",

       ),
     ),
   );
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.purple , soundNumber: 7),
              buildKey(color: Colors.blue , soundNumber: 6),
              buildKey(color: Colors.teal , soundNumber: 5),
              buildKey(color: Colors.green , soundNumber: 4),
              buildKey(color: Colors.yellow , soundNumber: 3),
              buildKey(color: Colors.orange , soundNumber: 2),
              buildKey(color: Colors.red , soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
