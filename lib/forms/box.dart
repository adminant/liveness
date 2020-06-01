import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import '../models/bbox.dart';

class Box extends StatelessWidget {

  final BBox bbox;

  const Box(this.bbox);

  @override
  Widget build(BuildContext context) {
    return viewBox();
  }

  Widget viewBox() {
    return Positioned(
      left: math.max(0, bbox.x).toDouble(),
      top: math.max(0, bbox.y).toDouble(),
      width: bbox.w.toDouble(),
      height: bbox.h.toDouble(),
      child: Container(
        padding: EdgeInsets.only(top: 5.0, left: 5.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(37, 213, 253, 1.0),
            width: 3.0,
          ),
        ),
      ),
    );
  }

}