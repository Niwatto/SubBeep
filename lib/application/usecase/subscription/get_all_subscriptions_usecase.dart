import 'package:get/get.dart';
import 'package:subbeep/application/domain/Subscriptions_domain.dart';
import 'package:subbeep/application/interface/subscription_interface.dart';

class GetAllSubscriptionsUsecase extends GetxService {
  final ISubscriptionRepository subscriptionRepository = Get.find();

  Future<List<SubscriptionDomain>> call() async {
    return await subscriptionRepository.getSubscriptions();
  }
}
