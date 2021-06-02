import 'package:betterplayer_demo/classes/coordinator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:betterplayer_demo/models/clip.dart';

class TopicalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PlatformTextButton(
          onPressed: () {
            Coordinator().showClip(Clip.example(), context);
          },
          child: Center(child: Text("Show Clip with push")),
        ),
        PlatformTextButton(
          onPressed: () {
            Coordinator().showClipModal(Clip.example(), context);
          },
          child: Center(child: Text("Show Clip Modal")),
        ),
      ],
    );
  }
}
