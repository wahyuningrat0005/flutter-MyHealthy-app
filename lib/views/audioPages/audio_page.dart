import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  late AudioPlayer _player;
  late AudioCache cache;

  Duration position = new Duration();
  Duration musicLenght = new Duration();

  Widget slider() {
    return Container(
      width: 300.0,
      child: Slider.adaptive(
        activeColor: ColorLib.blue,
        inactiveColor: ColorLib.grey,
        value: position.inSeconds.toDouble(),
        max: musicLenght.inSeconds.toDouble(),
        onChanged: ((value) {
          seekToSec(value.toInt());
        }),
      ),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache();

    _playe
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.blue,
              ColorLib.bluegrey,
            ])),
        child: Padding(
          padding: EdgeInsets.only(top: 48),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Meditaion",
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 25,
                      color: ColorLib.whiteText,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Listen to your favorite Meditation",
                    style: SecondaryTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 20,
                      color: ColorLib.whiteText,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Center(
                  child: Container(
                    width: 280.0,
                    height: 280.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage('assets/icons/person1.png'),
                        )),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Center(
                  child: Text(
                    "Meditation",
                    style: SecondaryTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 30,
                      color: ColorLib.whiteText,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorLib.whiteText,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(
                          30,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 500.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${position.inMinutes} : ${position.inSeconds.remainder(60)}",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              slider(),
                              Text(
                                "${musicLenght.inMinutes} : ${musicLenght.inSeconds.remainder(60)}",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 45.0,
                              color: ColorLib.blue,
                              icon: Icon(
                                Icons.skip_previous,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (!playing) {
                                  setState(() {
                                    playBtn = Icons.pause;
                                    playing = true;
                                  });
                                } else {
                                  playBtn = Icons.play_arrow;
                                  playing = false;
                                }
                              },
                              iconSize: 62,
                              color: ColorLib.blue,
                              icon: Icon(
                                Icons.play_arrow,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              iconSize: 45.0,
                              color: ColorLib.blue,
                              icon: Icon(
                                Icons.skip_next,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
