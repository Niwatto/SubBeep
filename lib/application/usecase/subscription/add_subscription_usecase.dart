import 'package:get/get.dart';
import 'package:subbeep/application/domain/Subscriptions_domain.dart';
import 'package:subbeep/application/interface/subscription_interface.dart';

class AddSubscriptionUsecase extends GetxService {
  final ISubscriptionRepository subscriptionRepository = Get.find();

  Future<SubscriptionDomain> call(SubscriptionDomain subscription) async {
    return await subscriptionRepository.createSubscription(subscription);
  }
}
