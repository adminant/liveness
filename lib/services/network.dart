

import 'dart:math';

import 'package:liveness_rtmp/models/bbox.dart';
import 'package:liveness_rtmp/services/server.dart';

class Network {

  Server server;

  Network(this.server);

  BBox getBBox() {
    int x = Random().nextInt(100);
    int y = Random().nextInt(200);
    int w = Random().nextInt(50);
    int h = Random().nextInt(100);
    bool isDetected = Random().nextBool();
    return BBox(x,y,w,h,isDetected);
  }

  init() {
    // TODO: network init
  }

  logout() {
    // TODO: network clean and logout
  }

}