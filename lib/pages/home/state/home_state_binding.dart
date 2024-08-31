import 'package:get/get.dart';
import 'package:subbeep/pages/home/state/home_state.dart';

class HomeStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeState());
  }
}
