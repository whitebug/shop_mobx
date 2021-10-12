import 'package:flutter/material.dart';
import 'package:shop_mobx/pages/pages.dart';
import 'package:shop_mobx/services/services.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MobxSlidingPanel extends StatelessWidget {
  final Widget panel;
  const MobxSlidingPanel({
    required this.panel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      panel: panel,
      minHeight: 0,
      maxHeight: 300,
      controller: getIt<ShopStore>().panelController,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
    );
  }
}
