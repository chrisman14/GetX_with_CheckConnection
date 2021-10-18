import 'package:check_connection/connectivityController.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c = Get.put(ConnectivityController());
    return Scaffold(
        body: Center(
            child: Obx(() => Text(
                  c.sources.value.keys.toList()[0] == ConnectivityResult.mobile
                      ? 'Mobile: Online'
                      : c.sources.value.keys.toList()[0] ==
                              ConnectivityResult.wifi
                          ? 'WiFi: Online'
                          : 'Offline',
                ))));
  }
}
