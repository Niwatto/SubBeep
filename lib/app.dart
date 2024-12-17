import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subbeep/component/loading.dart';
import 'package:subbeep/pages.dart';
import 'package:subbeep/pages/subbeep.dart';

import 'application_state.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final applicationState = Get.find<ApplicationState>();
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SubBeep',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
      ),
      builder: Loading.init(
        backgroundColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        textColor: Colors.transparent,
      ),
      initialRoute: SubbeepPage.routeName,
      navigatorKey: navigatorKey,
      getPages: Pages.execute(),
    );
  }
}
