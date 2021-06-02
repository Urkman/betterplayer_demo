import 'dart:ui';

import 'package:betterplayer_demo/application/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextSytles {
  TextStyle header(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 17, fontWeight: FontWeight.bold);
  }

  TextStyle subHeader(BuildContext context) {
    return TextStyle(color: UI.colors.secondaryText(context), fontSize: 14);
  }

  TextStyle tabbar(BuildContext context) {
    return TextStyle(color: UI.colors.secondaryText(context), fontSize: 11);
  }

  TextStyle tabbarSelected(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 11);
  }

  TextStyle largeBody(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 18);
  }

  TextStyle body(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 16);
  }

  TextStyle hint(BuildContext context) {
    return TextStyle(color: UI.colors.secondaryText(context), fontSize: 16);
  }

  TextStyle actionSheet(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 19);
  }

  TextStyle actionSheetDesctructive(BuildContext context) {
    return TextStyle(color: UI.colors.red(context), fontSize: 19);
  }

  TextStyle hashTag(BuildContext context) {
    return TextStyle(color: UI.colors.blue(context), fontSize: 16, fontWeight: FontWeight.normal);
  }

  TextStyle textField(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 16);
  }

  TextStyle error(BuildContext context) {
    return TextStyle(color: UI.colors.red(context), fontSize: 15);
  }

  TextStyle success(BuildContext context) {
    return TextStyle(color: UI.colors.green(context), fontSize: 15);
  }

  TextStyle listTitle(BuildContext context) {
    return TextStyle(color: UI.colors.white(context), fontSize: 16);
  }

  TextStyle listSubTitle(BuildContext context) {
    return TextStyle(color: UI.colors.secondaryWhite(context), fontSize: 15);
  }

  TextStyle detailHeader(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 16);
  }

  TextStyle detailTitle(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 24);
  }

  TextStyle detailKicker(BuildContext context) {
    return TextStyle(color: UI.colors.secondaryText(context), fontSize: 18);
  }

  TextStyle detailBody(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontSize: 16);
  }

  TextStyle liveInfo(BuildContext context) {
    return TextStyle(color: UI.colors.text(context), fontWeight: FontWeight.bold, fontSize: 18);
  }
}
