import 'package:betterplayer_demo/Application/ui.dart';
import 'package:betterplayer_demo/application/application_service.dart';
import 'package:flutter/widgets.dart';

class ChannelData {
  ChannelKey key;
  String name;
  Color color;
  String url;
  String infoText;

  ChannelData({
    required this.key,
    required this.name,
    required this.color,
    required this.url,
    required this.infoText,
  });

  static ChannelData tvm = ChannelData(
    key: ChannelKey.tvm,
    name: "TVM",
    color: UI.colors.tvm(),
    url: "https://live2.telvi.de/hls/tvm.m3u8",
    infoText:
        "Täglich neu um 18 Uhr startet unser Regionalmagazin „Live ab 6“ für die Region Koblenz/Mittelrhein/nördliches Rheinland-Pfalz mit aktuellen Regionalnachrichten zur vollen und halben Stunde.\n\nUnser aktuelles Magazin wird von 19 Uhr bis zum Folgetag um 17:59 Uhr wiederholt.",
  );
}
