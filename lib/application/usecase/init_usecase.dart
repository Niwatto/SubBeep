import 'package:get/get.dart';
import 'package:subbeep/application/usecase/subscription/add_subscription_usecase.dart';
import 'package:subbeep/application/usecase/subscription/get_subscription_usecase.dart';
import 'package:subbeep/application/usecase/subscription/update_subscription_usecase.dart';
import 'package:subbeep/application/usecase/subscription/delete_subscription_usecase.dart';
import 'package:subbeep/application/usecase/subscription/get_all_subscriptions_usecase.dart'; // Import GetAllSubscriptionsUsecase

Future<void> initUsecase() async {
  Get.put(AddSubscriptionUsecase());
  Get.put(GetSubscriptionUsecase());
  Get.put(UpdateSubscriptionUsecase());
  Get.put(DeleteSubscriptionUsecase());
  Get.put(GetAllSubscriptionsUsecase());
}
