import 'package:flutter/material.dart';
import 'package:mehealthy/views/audioPages/audio_page.dart';

class AudioPageMain extends StatelessWidget {
  const AudioPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioPage(),
    );
  }
}
