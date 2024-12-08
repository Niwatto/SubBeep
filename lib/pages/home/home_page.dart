import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subbeep/pages/home/state/home_state.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeState homeState = Get.find<HomeState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subbeep Home'),
      ),
      body: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                homeState.scheduleNotification();
              },
              child: const Text('Send Notification')),
        ],
      ),
    );
  }
}
