import 'package:get/get.dart';
import 'package:subbeep/application/domain/Subscriptions_domain.dart';
import 'package:subbeep/application/interface/subscription_interface.dart';

class UpdateSubscriptionUsecase extends GetxService {
  final ISubscriptionRepository subscriptionRepository = Get.find();

  Future<SubscriptionDomain?> call(
      String subscriptionId, SubscriptionDomain subscription) async {
    return await subscriptionRepository.updateSubscription(
        subscriptionId, subscription);
  }
}
