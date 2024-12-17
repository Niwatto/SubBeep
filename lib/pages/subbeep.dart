import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:subbeep/component/bottom_navigation_bar.dart';
import 'package:subbeep/pages/subbeep_state.dart';
import 'package:subbeep/pages/subscription/subscription_page.dart';

class SubbeepPage extends StatefulWidget {
  static const routeName = '/subbeep';
  const SubbeepPage({super.key});

  @override
  State<StatefulWidget> createState() => _SubbeepPageState();
}

class _SubbeepPageState extends State<SubbeepPage> {
  final SubbeepState bottomBarState = Get.find<SubbeepState>();

  final LocalKey _pageViewKey = UniqueKey();

  Size get getDesignSize {
    const width = 360.0;
    const height = 690.0;

    const largeWidth = 744.0;
    const largeHeight = 1133.0;

    final double widthScreen = MediaQuery.of(context).size.width;
    final double heighScreen = MediaQuery.of(context).size.height;

    if (widthScreen > heighScreen) {
      if (widthScreen >= 1200) {
        return const Size(largeHeight, largeWidth);
      }

      return const Size(height, width);
    }

    if (heighScreen >= 1200) {
      return const Size(largeWidth, largeHeight);
    }

    return const Size(width, height);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {},
      child: ScreenUtilInit(
        designSize: getDesignSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return Scaffold(
            body: Column(
              children: [
                _buildBody(),
                const BottomNavigationBarCustom(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBody() {
    return Expanded(
      child: PageView(
        key: _pageViewKey,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) => bottomBarState.setCurrentPageIndex(index),
        controller: bottomBarState.pageController,
        children: const [
          SubscriptionPage(),
        ],
      ),
    );
  }
}
