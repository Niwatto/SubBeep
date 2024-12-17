import 'package:get/get.dart';
import 'package:subbeep/pages/subbeep_state.dart';

class SubbeepStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SubbeepState());
  }
}
