class SubscriptionDomain {
  final String name;
  final String description;
  final String price;
  final String currency;
  final String interval;
  final String status;
  final String createdAt;
  final String logoUrl;

  SubscriptionDomain({
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.interval,
    required this.status,
    required this.createdAt,
    required this.logoUrl,
  });
}
