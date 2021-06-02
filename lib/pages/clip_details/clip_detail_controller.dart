import 'package:better_player/better_player.dart';
import 'package:betterplayer_demo/application/globals.dart';
import 'package:betterplayer_demo/models/clip.dart';
import 'package:get/get.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class ClipDetailController extends GetxController {
  BetterPlayerController? betterPlayerController;
  var isPlayerInitialized = false.obs;

  var clip = Clip().obs;

  ClipDetailController({
    required this.clip,
  }) : super();

  void start() {
    initPlayer();
  }

  void initPlayer() {
    BetterPlayerConfiguration betterPlayerConfiguration = BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      autoDispose: false,
      controlsConfiguration: BetterPlayerControlsConfiguration(
        enableSkips: false,
        enableOverflowMenu: false,
        enablePip: true,
      ),
    );

    BetterPlayerDataSource dataSource;
    videoURL(clip.value.youtubeId!).then(
      (value) {
        dataSource = BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          value,
        );

        betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
        betterPlayerController?.setupDataSource(dataSource);
        betterPlayerController?.enablePictureInPicture(Globals().betterPlayerKey);

        isPlayerInitialized.value = true;
      },
    );
  }

  Future<void> initializePlayer() async {
    isPlayerInitialized(true);
  }

  Future<String> videoURL(String url) async {
    var yt = YoutubeExplode();

    var streamInfo = await yt.videos.streamsClient.getManifest(url);
    var d = streamInfo.muxed.where((e) => e.container == StreamContainer.mp4);
    print(d.first.url.toString());
    return d.first.url.toString();
  }
}
