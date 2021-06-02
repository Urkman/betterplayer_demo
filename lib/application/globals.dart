import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Globals globals = Globals();

class Globals {
  GlobalKey<ScaffoldState>? _scaffoldKey;
  GlobalKey? _betterPlayerKey;

  Globals() {
    _scaffoldKey = GlobalKey<ScaffoldState>();
    _betterPlayerKey = GlobalKey();
  }
  GlobalKey get scaffoldKey => _scaffoldKey!;
  GlobalKey get betterPlayerKey => _betterPlayerKey!;
}
