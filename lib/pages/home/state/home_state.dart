import 'package:get/get.dart';

class HomeState extends GetxController {
  final _items = <Map<String, String>>[].obs;
  List<Map<String, String>> get items => _items;

  void setItems(List<Map<String, String>> items) {
    _items.value = items;
  }
}
