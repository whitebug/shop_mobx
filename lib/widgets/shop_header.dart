import 'package:flutter/material.dart';

class ShopHeader extends StatelessWidget {
  final Text title;

  const ShopHeader({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const SizedBox(
            height: 60.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: title,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Placeholder(
              fallbackHeight: 44.0,
            ),
          ),
        ],
      ),
    );
  }
}
