import 'package:flutter/material.dart';
import 'package:liveness_rtmp/forms/drawer.dart';
import 'package:liveness_rtmp/services/storage.dart';


class RewardListPage extends StatelessWidget {

  final List<String> list = Storage().getList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liveness App',
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('List of rewards'),
        ),
        body: list.length > 0 ? showList() : Container(),
      ),
    );
  }

  Widget showList() {
    return Container(
      //height: 50,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ButtonTheme(
            minWidth: 20.0,
            height: 20.0,
            child: MaterialButton(
              //color: AppTheme.colorDark,
              //colorBrightness: Brightness.dark,
              onPressed: () => print(index),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  Text('$index. '),
                  Text(list.elementAt(index)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
