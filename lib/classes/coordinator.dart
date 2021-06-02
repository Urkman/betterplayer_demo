import 'dart:io';

import 'package:betterplayer_demo/application/application_service.dart';
import 'package:betterplayer_demo/pages/clip_details/clip_detail_controller.dart';
import 'package:betterplayer_demo/pages/clip_details/clip_detail_tablet_page.dart';
import 'package:betterplayer_demo/pages/clip_details/clip_detail_page.dart';
import 'package:betterplayer_demo/models/clip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Coordinator {
  static final Coordinator _instance = Coordinator._internal();
  factory Coordinator() => _instance;

  Coordinator._internal();

  showClipModal(Clip clip, BuildContext context) {
    var ctl = ClipDetailController(clip: clip.obs);
    ctl.start();

    if (Platform.isIOS) {
      showCupertinoModalBottomSheet(
        context: context,
        builder: (context) => ClipDetailPage(
          controller: ctl,
        ),
        useRootNavigator: true,
      );
    } else {
      showMaterialModalBottomSheet(
        context: context,
        builder: (context) => ClipDetailPage(
          controller: ctl,
        ),
        useRootNavigator: true,
      );
    }
  }

  showClip(Clip clip, BuildContext context) {
    var ctl = ClipDetailController(clip: clip.obs);
    ctl.start();

    if (Get.find<ApplicationService>().getDeviceType() == DeviceType.phone) {
      Navigator.push(
        context, // ?? globals.scaffoldKey.currentContext!,
        platformPageRoute(
          context: context, // ?? globals.scaffoldKey.currentContext!,
          builder: (context) => ClipDetailPage(
            controller: ctl,
          ),
        ),
      );

      // if (Platform.isIOS) {
      //   showCupertinoModalBottomSheet(
      //     context: context,
      //     builder: (context) => ClipDetail(clip),
      //     useRootNavigator: true,
      //   );
      // } else {
      //   showMaterialModalBottomSheet(
      //     context: context,
      //     builder: (context) => ClipDetail(clip),
      //     useRootNavigator: true,
      //   );
      // }
    } else {
      showGeneralDialog(
        barrierLabel: "",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: Duration(milliseconds: 300),
        context: context,
        pageBuilder: (context, anim1, anim2) => Center(
            child: ClipDetailTablePage(
          controller: ctl,
        )),
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
            child: child,
          );
        },
      );
    }
  }
}
