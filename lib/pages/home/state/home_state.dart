import 'package:get/get.dart';
import 'package:subbeep/application/domain/Subscriptions_domain.dart';
import 'package:subbeep/application/usecase/subscription/get_all_subscriptions_usecase.dart';

class HomeState extends GetxController {
  final getAllSubscriptionsUsecase = Get.find<GetAllSubscriptionsUsecase>();

  final RxList<SubscriptionDomain> _subscriptionDomain =
      <SubscriptionDomain>[].obs;
  List<SubscriptionDomain> get subscriptions => _subscriptionDomain.toList();

  final _items = <Map<String, String>>[].obs;
  List<Map<String, String>> get items => _items;

  void setItems(List<Map<String, String>> items) {
    _items.value = items;
  }

  void loadSubscriptions() async {
    _subscriptionDomain.addAll(await getAllSubscriptionsUsecase.call());
  }
}
