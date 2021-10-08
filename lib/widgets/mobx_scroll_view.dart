import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/pages/pages.dart';

class MobxScrollView extends StatelessWidget {
  final List<Widget> children;
  final ShopPageStore store;
  const MobxScrollView({
    required this.children,
    required this.store,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return CustomScrollView(
        controller: store.controller,
        slivers: children,
      );
    });
  }
}