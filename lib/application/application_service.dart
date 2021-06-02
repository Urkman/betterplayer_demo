import 'package:betterplayer_demo/models/channel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

enum ChannelKey { drf1, tvm, wwtv }
enum DeviceType { phone, tablet }

class ApplicationService extends GetxService {
  var currentChannelColor = ChannelData.tvm.color.obs;

  void init() {}

  DeviceType getDeviceType() {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);
    return data.size.shortestSide < 550 ? DeviceType.phone : DeviceType.tablet;
  }

  double playerWidth(BuildContext context) {
    bool isTablet = Get.find<ApplicationService>().getDeviceType() == DeviceType.tablet;
    if (isTablet) {
      bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

      if (isLandscape) {
        double height = MediaQuery.of(context).size.height * 0.5;
        return height * 16 / 9;
      } else {
        return MediaQuery.of(context).size.width * 0.8;
      }
    } else {
      return MediaQuery.of(context).size.width;
    }
  }
}
