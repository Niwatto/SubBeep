import 'package:get/get.dart';
import 'package:subbeep/application/interface/subscription_interface.dart';

class DeleteSubscriptionUsecase extends GetxService {
  final ISubscriptionRepository subscriptionRepository = Get.find();

  Future<void> call(String subscriptionId) async {
    return await subscriptionRepository.deleteSubscription(subscriptionId);
  }
}
