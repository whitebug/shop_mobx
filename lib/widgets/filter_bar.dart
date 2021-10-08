import 'package:flutter/material.dart';
import 'package:shop_mobx/pages/shop/shop.dart';

import 'widgets.dart';

/// This bar contains filters
class FilterBar extends StatelessWidget {
  const FilterBar({
    Key? key,

    /// Store for shop's state
    required this.store,
  }) : super(key: key);

  final ShopPageStore store;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        height: 90.0,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFF9F9F9),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoriesList(),
            TextButton(
              child: Text('open'),
              onPressed: () {
                store.openPanel();
              },
            ),
          ],
        ),
      ),
    );
  }
}
