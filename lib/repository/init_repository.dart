import 'package:get/get.dart';
import 'package:subbeep/application/interface/subscription_interface.dart';
import 'package:subbeep/repository/subscriptions_repository.dart';

Future<void> initRepository() async {
  Get.put<ISubscriptionRepository>(SubscriptionRepository());
}
