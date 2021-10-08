import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/pages/pages.dart';
import 'package:shop_mobx/services/services.dart';

class MobxScrollView extends StatelessWidget {
  final List<Widget> children;
  const MobxScrollView({
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return CustomScrollView(
        controller: getIt<ShopPageStore>().scrollController,
        slivers: children,
      );
    });
  }
}