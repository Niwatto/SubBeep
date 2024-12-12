import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SubscriptionState extends GetxController {
  final List<String> bands = [
    "assets/band/netflix.png",
    "assets/band/chatgpt.png",
  ];
  void addBand(String bandUrl) {
    bands.add(bandUrl);
  }
}
