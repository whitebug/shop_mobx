import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_mobx/models/models.dart';

import 'widgets.dart';

class ListItems extends StatelessWidget {
  /// Items for sale
  final List<ShopItem> items;
  /// Card size
  final double _cardListHeight = 120;

  const ListItems({
    required this.items,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: _cardListHeight,
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final _currentItem = items[index];
          return ListCard(
            itemSize: _cardListHeight,
            shopItem: _currentItem,
            image: CachedNetworkImage(
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              imageUrl: _currentItem.image,
            ),
            itemName: Text(
              _currentItem.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            itemPrice: Text(
              '${_currentItem.price}\$',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            cardColor: Theme.of(context).cardColor,
          );
        },
        childCount: items.length,
      ),
    );
  }
}
