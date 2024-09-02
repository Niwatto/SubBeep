import 'package:hive/hive.dart';
import 'package:subbeep/application/domain/Subscriptions_domain.dart';

part 'subscription_entity.g.dart';

@HiveType(typeId: 1, adapterName: 'SubscriptionsEntityAdapter')
class SubscriptionsEntity extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String price;
  @HiveField(4)
  final String currency;
  @HiveField(5)
  final String interval;
  @HiveField(6)
  final String status;
  @HiveField(7)
  final String createdAt;
  @HiveField(8)
  final String logoUrl;

  SubscriptionsEntity(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.currency,
      required this.interval,
      required this.status,
      required this.createdAt,
      required this.logoUrl});

  static SubscriptionsEntity fromDomain(SubscriptionDomain domain) {
    return SubscriptionsEntity(
        id: domain.id,
        name: domain.name,
        description: domain.description,
        price: domain.price,
        currency: domain.currency,
        interval: domain.interval,
        status: domain.status,
        createdAt: domain.createdAt,
        logoUrl: domain.logoUrl);
  }

  SubscriptionDomain toDomain() {
    return SubscriptionDomain(
        id: id,
        name: name,
        description: description,
        price: price,
        currency: currency,
        interval: interval,
        status: status,
        createdAt: createdAt,
        logoUrl: logoUrl);
  }
}
