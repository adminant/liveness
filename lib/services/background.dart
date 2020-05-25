

import 'package:liveness_rtmp/models/bbox.dart';
import 'package:liveness_rtmp/services/network.dart';

class Background {

  Network _network;

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

  static Future<void> configure(
      Network network) async {
    final Background b = Background.getInstance();

    b._network = network;
    await b._network.init();

    b._isSetup = true;
  }

  Future <BBox> getBBox() async {
    return _network.getBBox();
  }

  Future<void> logout() async {
    await _network.logout();
  }

}
