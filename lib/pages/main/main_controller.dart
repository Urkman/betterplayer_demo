import 'package:betterplayer_demo/pages/live/live_controller.dart';
import 'package:betterplayer_demo/application/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  PlatformTabController tabController = PlatformTabController(
    initialIndex: 1,
  );

  var tabsBackgroundColor = Colors.transparent.obs;
  var currentIndex = 2.obs;

  @override
  void onInit() {
    super.onInit();

    tabController.addListener(_listener);
  }

  @override
  void onClose() {
    tabController.removeListener(_listener);
  }

  void _listener() {
    final index = tabController.index(globals.scaffoldKey.currentContext!);
    currentIndex.value = index;
    if (index != 0) {
      Get.find<LiveController>().pause();
    }
  }
}
