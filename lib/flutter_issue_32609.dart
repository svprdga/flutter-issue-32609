import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_issue_32609/screen.dart';

class FlutterIssue32609 {
  static const MethodChannel _channel =
      const MethodChannel('flutter_issue_32609');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Screen getScreen() {
    return Screen();
  }
}

