import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveness_rtmp/forms/camerapage.dart';
import 'package:liveness_rtmp/forms/imghashpage.dart';
import 'package:liveness_rtmp/forms/rewardlistpage.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 60.0,
            child: DrawerHeader(
                child:
                    Text('Liveness App', style: TextStyle(color: Colors.white)),
                decoration: BoxDecoration(color: Colors.blue),
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0)),
          ),
          ListTile(
            title: Text("Start page"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ImgHashPage()));
            },
          ),
          ListTile(
            title: Text("Rewards list"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => RewardListPage()));
            },
          ),
        ],
      ),
    );
  }
}
