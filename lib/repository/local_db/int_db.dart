import 'package:hive_flutter/hive_flutter.dart';
import 'package:subbeep/repository/local_db/subscription/subscription_entity.dart';

Future<void> initDatabase() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SubscriptionsEntityAdapter());
}
