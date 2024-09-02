import 'package:get/get.dart';
import 'package:subbeep/application/domain/Subscriptions_domain.dart';
import 'package:subbeep/application/interface/subscription_interface.dart';
import 'package:subbeep/repository/local_db/subscription/subscription_entity.dart';
import 'package:subbeep/repository/local_db/subscription/subscription_local_src.dart';

class SubscriptionRepository extends GetxService
    implements ISubscriptionRepository {
  @override
  Future<SubscriptionDomain> createSubscription(
      SubscriptionDomain subscription) async {
    await SubscriptionLocalSrc.addSubscription(
        SubscriptionsEntity.fromDomain(subscription));
    return subscription;
  }

  @override
  Future<void> deleteSubscription(String id) async =>
      await SubscriptionLocalSrc.deleteSubscription(id);

  @override
  Future<SubscriptionDomain> getSubscription(String id) async {
    final subscriptionEntity = SubscriptionLocalSrc.getSubscription(id);
    if (subscriptionEntity == null) {
      throw Exception('Subscription not found');
    }
    return subscriptionEntity.toDomain();
  }

  @override
  Future<List<SubscriptionDomain>> getSubscriptions() async {
    final subscriptions = SubscriptionLocalSrc.getSubscriptions();
    return subscriptions.map((e) => e.toDomain()).toList();
  }

  @override
  Future<SubscriptionDomain> updateSubscription(
      String id, SubscriptionDomain subscription) async {
    await SubscriptionLocalSrc.updateSubscription(
        id, SubscriptionsEntity.fromDomain(subscription));
    return subscription;
  }
}
