import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import 'checkConnectivityServices.dart';
class ConnectivityController extends GetxController{
  var sources = {ConnectivityResult.none: false}.obs;
  final CheckConnectivityServices _connectivity =
      CheckConnectivityServices.instance;
  @override
  void onInit() {
    // TODO: implement onInit
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      print("chrisman"+sources.toString());
      sources.value = source;

    });
    super.onInit();
  }
  @override
  void onClose() {
    _connectivity.disposeStream();
    super.onClose();
  }
}