import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/pages/shop/shop.dart';

import 'widgets.dart';

/// This bar contains filters
class FilterBar extends StatelessWidget {
  const FilterBar({
    Key? key,

    /// Store for shop's state
    required this.store,
  }) : super(key: key);

  final ShopStore store;

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
            Observer(
              builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 16.0),
                        Image.asset('assets/images/icons/filter.png'),
                        SizedBox(width: 5.0),
                        Text(
                          'Filters',
                          style: Theme.of(context).textTheme.subtitle2,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/icons/swap.png'),
                        SizedBox(width: 5.0),
                        TextButton(
                          child: Text(
                            store.filterString,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          onPressed: () {
                            store.openPanel();
                          },
                        ),
                      ],
                    ),
                    TextButton(
                      child: Image.asset(
                        store.shopListType == ShopListEnum.grid
                            ? 'assets/images/icons/list.png'
                            : 'assets/images/icons/grid.png',
                      ),
                      onPressed: () {
                        store.changeShopType();
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
