import "package:flutter/material.dart";
import "package:flutter_easyloading/flutter_easyloading.dart";

class Loading {
  static Widget Function(BuildContext, Widget?)? init({
    required Color backgroundColor,
    required Color indicatorColor,
    required Color textColor,
  }) {
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.black
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..indicatorSize = 100.0
      ..backgroundColor = backgroundColor
      ..boxShadow = [BoxShadow(color: backgroundColor)]
      ..indicatorColor = indicatorColor
      ..textColor = indicatorColor
      ..userInteractions = false
      ..loadingStyle = EasyLoadingStyle.custom;

    return EasyLoading.init();
  }

  static void show() => EasyLoading.show();

  static Future<void> dismiss() async {
    if (!EasyLoading.isShow) return;
    await EasyLoading.dismiss();
  }
}
