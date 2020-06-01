

import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  SharedPreferences prefs;
  String key = "rewardlistkey";

  Future<bool> saveList(List<String> list) async {
    return await prefs.setStringList(key, list);
  }

  List<String> getList() {
    //return prefs.getStringList(key);
    List<String> list = {"ASDASDASDSAAS", "BBGBVCBVCBCBCV", "CDCVFVCXCCVXCCV", "DDFDFDFDFDFDFFD"}.toList();
    return list;
  }
}
