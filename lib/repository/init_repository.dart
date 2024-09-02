import 'package:get/get.dart';
import 'package:subbeep/repository/subscriptions_repository.dart';

Future<void> initRepository() async {
  Get.put(SubscriptionRepository());
}
