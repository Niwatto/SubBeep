import 'package:get/get.dart';
import 'package:subbeep/application/domain/Subscriptions_domain.dart';
import 'package:subbeep/application/interface/subscription_interface.dart';

class GetSubscriptionUsecase extends GetxService {
  final ISubscriptionRepository subscriptionRepository = Get.find();

  Future<SubscriptionDomain?> call(String subscriptionId) async {
    return await subscriptionRepository.getSubscription(subscriptionId);
  }
}
