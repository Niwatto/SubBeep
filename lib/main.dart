import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subbeep/app.dart';
import 'package:subbeep/application_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ApplicationState());
  runApp(App());
}
