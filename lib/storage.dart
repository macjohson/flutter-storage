
import 'dart:async';

import 'package:flutter/services.dart';

class Storage {
  static const MethodChannel _channel =
      const MethodChannel('storage');

  static Future<String> get documentDir async {
    final String dir = await _channel.invokeMethod('getDocumentDir');
    return dir;
  }
}
