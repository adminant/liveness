import 'package:meta/meta.dart';

class Server
{
  final String protocol;
  final String address;
  final int port;

  const Server({@required this.protocol, @required this.address, this.port});
}