import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/services/services.dart';
import 'package:shop_mobx/widgets/mobx_scroll_view.dart';
import 'package:shop_mobx/widgets/widgets.dart';

import '../../pages.dart';

class ShopTab extends StatelessWidget {
  const ShopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ShopStore store = getIt<ShopStore>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Observer(
        builder: (_) {
          List<ShopItem>? items = store.displayedItems;
          return MobxScrollView(
            children: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 100.0),
                ]),
              ),
              store.shopListType == ShopListEnum.grid
                  ? GridItems(items: items)
                  : ListItems(items: items),
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 90.0),
                ]),
              ),
            ],
          );
        },
      ),
    );
  }
}
