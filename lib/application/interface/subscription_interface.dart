import 'package:subbeep/application/domain/Subscriptions_domain.dart';

abstract interface class ISubscriptionRepository {
  Future<List<SubscriptionDomain>> getSubscriptions();
  Future<SubscriptionDomain> getSubscription(String id);
  Future<SubscriptionDomain> createSubscription(
      SubscriptionDomain subscription);
  Future<SubscriptionDomain> updateSubscription(
      String id, SubscriptionDomain subscription);
  Future<void> deleteSubscription(String id);
}
