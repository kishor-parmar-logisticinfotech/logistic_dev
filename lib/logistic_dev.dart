import 'dart:async';

import 'package:flutter/services.dart';

class LogisticDev {
  static const MethodChannel _channel = const MethodChannel('logistic_dev');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
