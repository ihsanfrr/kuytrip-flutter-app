import 'package:flutter/material.dart';
import 'package:kuytrip/shared/constant.dart';

class TabWidget extends StatelessWidget {
  TabWidget({
    Key? key,
  }) : super(key: key);

  final List<String> tabs = [
    'All',
    'Nearby',
    'Popular',
    'Best Deals',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        tabs.length,
        (index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:
                index == 0 ? const Color(0xFFE0E0E0).withOpacity(0.4) : white,
          ),
          child: Center(
            child: Text(
              tabs[index],
              style: medium.copyWith(
                  color: index == 0 ? black : grey, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
