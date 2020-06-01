// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:camera_with_rtmp/camera.dart';
import 'package:flutter/material.dart';
import 'package:liveness_rtmp/imghashpage.dart';
import 'package:liveness_rtmp/services/background.dart';
import 'package:liveness_rtmp/services/network.dart';
import 'package:liveness_rtmp/services/server.dart';

import 'camerapage.dart';


Future<void> main() async {

  try {
    WidgetsFlutterBinding.ensureInitialized();

    final Server server = Server(protocol: "https", address: "address", port: null);
    final Network network = Network(server);
    List<CameraDescription> cameras = await availableCameras();
    await Background.configure(network, cameras);

  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(MaterialApp(home: ImgHashPage()));
}
