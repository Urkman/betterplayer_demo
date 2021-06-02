import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  Color text(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xffffffff);
    } else {
      return Color(0xff000000);
    }
  }

  Color textFieldBackground(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xff101010);
    } else {
      return Color(0xffffffff);
    }
  }

  Color secondaryText(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xffb3b3b3);
    } else {
      return Color(0xff6C6C6C);
    }
  }

  Color background(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xff060606);
    } else {
      return Color(0xffF9F9F9);
    }
  }

  Color navigationBar(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xff639136); // 639136 202020
    } else {
      return Color(0xff9be354); // 9be354 DFDFDF
    }
  }

  Color tabBar(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xEE202020); // 639136 202020
    } else {
      return Color(0xEEDFDFDF);
    }
  }

  Color card(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xff181818);
    } else {
      return Color(0xffE7E7E7);
    }
  }

  Color cardSelected(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xff282828);
    } else {
      return Color(0xffD7D7D7);
    }
  }

  Color white(BuildContext context) {
    return Color(0xffffffff);
  }

  Color black(BuildContext context) {
    return Color(0xff000000);
  }

  Color secondaryWhite(BuildContext context) {
    return Color(0xffb3b3b3);
  }

  Color green(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xff639136); // 639136 202020
    } else {
      return Color(0xff9be354); // 9be354 DFDFDF
    }
  }

  Color blue(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Colors.blueAccent;
    } else {
      return Colors.blueAccent;
    }
  }

  Color red(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Colors.redAccent;
    } else {
      return Colors.redAccent;
    }
  }

  Color disabled(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xffb3b3b3);
    } else {
      return Color(0xff4C4C4C);
    }
  }

  Color infoText(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xffffffff);
    } else {
      return Color(0xff000000);
    }
  }

  Color successText(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xffffffff);
    } else {
      return Color(0xff000000);
    }
  }

  Color errorText(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xffffffff);
    } else {
      return Color(0xff000000);
    }
  }

  Color info(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xAA181818);
    } else {
      return Color(0xAAE7E7E7);
    }
  }

  Color success(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xAA007E33);
    } else {
      return Color(0xAA00C851);
    }
  }

  Color error(BuildContext context) {
    Brightness brightness = MediaQuery.platformBrightnessOf(context);
    if (brightness == Brightness.dark) {
      return Color(0xAACC0000);
    } else {
      return Color(0xfAAf4444);
    }
  }

  Color tvm() {
    return Color(0xFFA0BC3D);
  }

  Color wwtv() {
    return Color(0xFFF1BC41);
  }

  Color drf() {
    return Color(0xFF479BD3);
  }
}
