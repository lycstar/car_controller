import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Controller {
  static final Uri wsUrl = Uri.parse('ws://192.168.4.1:8080');

  static WebSocketChannel? channel;

  static ValueNotifier<bool> connected = ValueNotifier<bool>(false);

  static Future<void> connectOrClose(bool value) async {
    if (value) {
      channel = WebSocketChannel.connect(wsUrl);
      channel?.stream.listen((message) {
        print(message);
      });
    } else {
      channel?.sink.close();
    }
    connected.value = value;
  }

  static sendCommand(String command) {
    print(command);
    channel?.sink.add(command);
  }
}
