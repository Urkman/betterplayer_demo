import 'package:better_player/better_player.dart';
import 'package:betterplayer_demo/application/application_service.dart';
import 'package:betterplayer_demo/application/globals.dart';
import 'package:betterplayer_demo/application/ui.dart';
import 'package:betterplayer_demo/models/channel.dart';
import 'package:betterplayer_demo/pages/live/live_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';

class LivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (!Get.find<LiveController>().isPlayerInitialized.value)
            Container(
              height: Get.find<ApplicationService>().playerWidth(context) * 9 / 16,
              width: Get.find<ApplicationService>().playerWidth(context),
              child: Center(child: PlatformCircularProgressIndicator()),
            ),
          if (Get.find<LiveController>().isPlayerInitialized.value)
            AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer(
                controller: Get.find<LiveController>().betterPlayerController!,
                // key: Globals().betterPlayerKey,
              ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  ChannelData.tvm.infoText,
                  style: UI.textStyles.body(context),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
