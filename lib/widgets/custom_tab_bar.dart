import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.fill,
      indicatorPadding: EdgeInsets.zero,
      labelColor: Colors.red,
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.facebookBlue,
            width: 3.0
          ),
        ),
      ),
      tabs: icons
          .map(
            (e) => Tab(
              icon: Icon(e),
            ),
          )
          .toList(),
      onTap: onTap,
    );
  }
}
