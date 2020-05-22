
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  @override
  PlayerState createState() => PlayerState();
}

class PlayerState extends State<Player> {
  final FijkPlayer player = FijkPlayer();

  @override
  void initState() {
    super.initState();
    player.setDataSource(
        "rtmp://rtmp.facecast.io/live/liveness1",
        autoPlay: true);
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }


  @override
  Widget build(BuildContext context) {
    return FijkView(player: player);
  }
}