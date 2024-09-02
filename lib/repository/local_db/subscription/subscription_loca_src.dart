import 'package:hive/hive.dart';
import 'package:subbeep/repository/local_db/subscription/subscription_entity.dart';

class SubscriptionLocalSrc {
  static late Box<SubscriptionsEntity> subBox;

  static Future<void> init() async {
    subBox = await Hive.openBox<SubscriptionsEntity>('subBox');
  }

  static Future<void> addSubscription(SubscriptionsEntity subscription) async {
    await subBox.put(subscription.id, subscription);
  }

  static SubscriptionsEntity? getSubscription(String id) => subBox.get(id);

  static List<SubscriptionsEntity> getSubscriptions() => subBox.values.toList();

  static Future<void> deleteSubscription(String id) async =>
      await subBox.delete(id);

  static Future<void> updateSubscription(
          String id, SubscriptionsEntity subscription) async =>
      await subBox.put(id, subscription);
}
