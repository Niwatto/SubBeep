import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:subbeep/app.dart';
import 'package:subbeep/application/usecase/init_usecase.dart';
import 'package:subbeep/application_state.dart';
import 'package:subbeep/repository/init_repository.dart';
import 'package:subbeep/repository/local_db/int_db.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ApplicationState());
  await initDatabase();
  await initRepository();
  await initUsecase();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
    if (response.payload != null) {
      print('Notification Payload: ${response.payload}');
    }
  });

  runApp(App());
}
