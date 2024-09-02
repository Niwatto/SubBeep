import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subbeep/app.dart';
import 'package:subbeep/application/usecase/init_usecase.dart';
import 'package:subbeep/application_state.dart';
import 'package:subbeep/repository/init_repository.dart';
import 'package:subbeep/repository/local_db/int_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ApplicationState());
  await initDatabase();
  await initRepository();
  await initUsecase();
  runApp(App());
}
