import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subbeep/pages/subbeep_state.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarCustom> {
  final SubbeepState bottomBarState = Get.find<SubbeepState>();

  @override
  Widget build(BuildContext context) {
    const TextStyle labelselectedStyle = TextStyle(
      fontSize: 12,
      color: Colors.blue,
    );
    const TextStyle labelUnselectedStyle = TextStyle(
      fontSize: 12,
      color: Colors.grey,
    );

    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        border: const Border(
          top: BorderSide(width: 2.0, color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => bottomBarState.onTapBottomNavigationItem(index: 0),
              child: SizedBox(
                height: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: bottomBarState.currentPageIndex == 0 ? Colors.blue.withOpacity(0.1) : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.table_bar,
                            size: 24,
                            color: bottomBarState.currentPageIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "โต๊ะ",
                            style: bottomBarState.currentPageIndex == 0 ? labelselectedStyle : labelUnselectedStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
