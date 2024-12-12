import 'package:get/get.dart';
import 'package:subbeep/pages/subscription/state/subscription_state.dart';

class SubscriptionStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscriptionState>(() => SubscriptionState());
  }
}
