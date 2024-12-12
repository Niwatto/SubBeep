import 'package:get/route_manager.dart';
import 'package:subbeep/pages/home/home_page.dart';
import 'package:subbeep/pages/home/state/home_state_binding.dart';
import 'package:subbeep/pages/subscription/state/subscription_state_biding.dart';
import 'package:subbeep/pages/subscription/subscription_page.dart';

class Pages {
  static List<GetPage> execute() => [
        GetPage(
          name: HomePage.routeName,
          page: () => const HomePage(),
          binding: HomeStateBinding(),
        ),
        GetPage(
          name: SubscriptionPage.routeName,
          page: () => const SubscriptionPage(),
          binding: SubscriptionStateBinding(),
        ),
      ];
}
