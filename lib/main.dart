import 'dart:io';

import 'package:betterplayer_demo/pages/live/live_controller.dart';
import 'package:betterplayer_demo/application/application_service.dart';
import 'package:betterplayer_demo/pages/main/main_controller.dart';
import 'package:betterplayer_demo/pages/main/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'application/globals.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(DRFApp());
}

class DRFApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return GetCupertinoApp(
        enableLog: true,
        defaultTransition: Transition.cupertino,
        opaqueRoute: Get.isOpaqueRouteDefault,
        popGesture: Get.isPopGestureEnable,
        title: "DRF",
        debugShowCheckedModeBanner: false,
        key: globals.scaffoldKey,
        initialBinding: BindingsBuilder(() {
          Get.put(ApplicationService()).init();

          Get.lazyPut<MainController>(() => MainController());
          Get.lazyPut<LiveController>(() => LiveController());
        }),
        localizationsDelegates: [
          DefaultMaterialLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
        ],
        onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
          builder: (context) => MainPage(),
        ),
        // home: MainPage(),
      );
    } else {
      return GetMaterialApp(
        enableLog: true,
        defaultTransition: Transition.fade,
        opaqueRoute: Get.isOpaqueRouteDefault,
        popGesture: Get.isPopGestureEnable,
        title: "DRF",
        debugShowCheckedModeBanner: false,
        key: globals.scaffoldKey,
        initialBinding: BindingsBuilder(() {
          Get.put(ApplicationService()).init();

          Get.lazyPut<MainController>(() => MainController());
          Get.lazyPut<LiveController>(() => LiveController());
        }),
        onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
          builder: (context) => MainPage(),
        ),
        // home: MainPage(),
      );
    }
  }
}
