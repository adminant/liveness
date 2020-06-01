

import 'package:liveness_rtmp/models/bbox.dart';
import 'package:liveness_rtmp/services/network.dart';

import 'package:camera_with_rtmp/camera.dart';

class Background {

  Network _network;
  List<CameraDescription> _cameras = [];

  bool _isSetup = false;
  bool get isConfigured => _isSetup;

  static Background _instance;

  Background._();

  static Background getInstance() {
    if (_instance == null) {
      return _instance = Background._();
    } else {
      return _instance;
    }
  }

  static Future<void> configure(Network network, List<CameraDescription> cameras) async {
    final Background b = Background.getInstance();

    b._network = network;
    await b._network.init();

    b._cameras = cameras;

    b._isSetup = true;
  }

  Future <BBox> getBBox() async {
    return _network.getBBox();
  }

  List<CameraDescription> getCameras() {
    return _cameras;
  }

  Future<void> logout() async {
    await _network.logout();
  }

}
