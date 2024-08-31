import 'package:get/route_manager.dart';
import 'package:subbeep/pages/home/home_page.dart';
import 'package:subbeep/pages/home/state/home_state_binding.dart';

class Pages {
  static List<GetPage> execute() => [
        GetPage(
            name: HomePage.routeName,
            page: () => HomePage(),
            binding: HomeStateBinding()),
      ];
}
