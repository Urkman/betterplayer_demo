import 'package:better_player/better_player.dart';
import 'package:betterplayer_demo/application/application_service.dart';
import 'package:betterplayer_demo/application/globals.dart';
import 'package:betterplayer_demo/application/ui.dart';
import 'package:betterplayer_demo/pages/clip_details/clip_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ClipDetailPage extends StatelessWidget {
  final ClipDetailController controller;

  ClipDetailPage({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(
          controller.clip.value.title!,
          textAlign: TextAlign.center,
          maxLines: 1,
          style: UI.textStyles.body(context),
        ),
        backgroundColor: Get.find<ApplicationService>().currentChannelColor.value,
        leading: PlatformIconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            context.platformIcons.clear,
            color: UI.colors.text(context),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        trailingActions: [
          PlatformIconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              context.platformIcons.share,
              color: UI.colors.text(context),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Obx(
        () => Column(
          children: [
            if (!controller.isPlayerInitialized.value)
              Container(
                height: Get.find<ApplicationService>().playerWidth(context) * 9 / 16,
                width: Get.find<ApplicationService>().playerWidth(context),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      controller.clip.value.youtubeThumbUrl!,
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: PlatformCircularProgressIndicator(),
                    )
                  ],
                ),
              ),
            if (controller.isPlayerInitialized.value)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: BetterPlayer(
                  controller: controller.betterPlayerController!,
                  key: Globals().betterPlayerKey,
                ),
              ),
            Expanded(
              child: ListView(
                children: [
                  Column(children: [
                    Row(children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            DateFormat("dd. MMMM yyyy HH:mm").format(controller.clip.value.date!),
                            style: UI.textStyles.header(context),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            controller.clip.value.categoryName!,
                            textAlign: TextAlign.right,
                            style: UI.textStyles.header(context),
                          ),
                        ),
                        flex: 1,
                      )
                    ]),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(controller.clip.value.title!, textAlign: TextAlign.left, style: UI.textStyles.header(context)),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(controller.clip.value.showFormatName!, textAlign: TextAlign.left, style: UI.textStyles.header(context)),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                          width: double.infinity, child: Text(controller.clip.value.details!, textAlign: TextAlign.left, style: UI.textStyles.body(context))),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
