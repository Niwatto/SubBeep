import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subbeep/component/button_see_more.dart';
import 'package:subbeep/component/card_band.dart';
import 'package:subbeep/pages/subscription/state/subscription_state.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  static const routeName = '/subscription';

  @override
  State<StatefulWidget> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final SubscriptionState subscriptionState = Get.find<SubscriptionState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New subscription'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: subscriptionState.bands.map((image) => CardBand(image: image)).toList(),
            ),
          ),
          ButtonSeeMore(onPressed: () {}),
        ],
      ),
    );
  }
}
