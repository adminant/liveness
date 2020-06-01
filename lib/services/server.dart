import 'package:meta/meta.dart';

class Server
{
  final String protocol;
  final String address;
  final int port;

  static final String rtmpUrl = "rtmp://rtmp.facecast.io/live/liveness1";

  const Server({@required this.protocol, @required this.address, this.port});
}