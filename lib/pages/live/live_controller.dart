import 'package:better_player/better_player.dart';
import 'package:betterplayer_demo/application/globals.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:betterplayer_demo/models/channel.dart';

class LiveController extends GetxController {
  BetterPlayerController? betterPlayerController;
  var isPlayerInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializePlayer();
  }

  void pause() {
    if (betterPlayerController != null) {
      betterPlayerController!.pause();
    }
  }

  Future<void> initializePlayer() async {
    BetterPlayerConfiguration betterPlayerConfiguration = BetterPlayerConfiguration(
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
      autoPlay: false,
      autoDispose: false,
      looping: true,
      controlsConfiguration: BetterPlayerControlsConfiguration(
        enableSkips: false,
        enableOverflowMenu: false,
        enablePip: true,
      ),
    );

    isPlayerInitialized.value = false;
    BetterPlayerDataSource dataSource;
    dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      ChannelData.tvm.url,
    );

    betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    betterPlayerController?.setupDataSource(dataSource);
    betterPlayerController?.enablePictureInPicture(Globals().betterPlayerKey);

    isPlayerInitialized.value = true;
  }
}
