import 'package:betterplayer_demo/application/ui.dart';
import 'package:betterplayer_demo/application/application_service.dart';
import 'package:betterplayer_demo/pages/live/live_page.dart';
import 'package:betterplayer_demo/pages/main/main_controller.dart';
import 'package:betterplayer_demo/pages/topical/topical_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final items = (BuildContext context) => [
        BottomNavigationBarItem(
          // label: 'Live',
          title: Text(
            "Live",
            style: Get.find<MainController>().currentIndex.value == 0 ? UI.textStyles.tabbarSelected(context) : UI.textStyles.tabbar(context),
          ),
          icon: Icon(
            PlatformIcons(context).add,
            color: Get.find<MainController>().currentIndex.value == 0 ? UI.colors.text(context) : UI.colors.secondaryText(context),
            size: 24,
          ),
        ),
        BottomNavigationBarItem(
          // label: 'Aktuell',
          title: Text(
            "Aktuell",
            style: Get.find<MainController>().currentIndex.value == 2 ? UI.textStyles.tabbarSelected(context) : UI.textStyles.tabbar(context),
          ),
          icon: Icon(
            PlatformIcons(context).add,
            color: Get.find<MainController>().currentIndex.value == 2 ? UI.colors.text(context) : UI.colors.secondaryText(context),
            size: 24,
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PlatformTabScaffold(
        iosContentPadding: true,
        tabController: Get.find<MainController>().tabController,
        pageBackgroundColor: Colors.transparent, //  Get.find<MainController>().tabsBackgroundColor.value, // just fake...
        tabsBackgroundColor: UI.colors.tabBar(context),
        appBarBuilder: (_, index) => PlatformAppBar(
          title: Text(
            index == 0 ? 'Live' : 'Aktuell',
            style: UI.textStyles.body(context), //  TextStyle(color: UI.colors.text(context)),
          ),
          backgroundColor: Get.find<ApplicationService>().currentChannelColor.value,
          cupertino: (_, __) => CupertinoNavigationBarData(
            title: Text(
              index == 0 ? 'Live' : 'Aktuell',
              style: TextStyle(color: UI.colors.text(context)),
            ),
          ),
        ),
        bodyBuilder: (context, index) {
          if (index == 0) {
            return LivePage();
          } else {
            return TopicalPage();
          }
        },
        items: items(context),
        materialTabs: (context, platform) => MaterialNavBarData(type: BottomNavigationBarType.fixed),
        materialBuilder: (context, __, index) => MaterialTabScaffoldData(
          backgroundColor: UI.colors.background(context),
        ),
        cupertinoBuilder: (_, __, index) => CupertinoTabScaffoldData(
          backgroundColor: UI.colors.background(context),
        ),
      ),
    );
  }
}
