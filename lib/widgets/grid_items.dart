import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/services/services.dart';

import 'widgets.dart';

/// Grid view of items for shop page
class GridItems extends StatelessWidget {
  /// items for sale
  final List<ShopItem> items;
  // grid card size
  final double _cardGridWidth = 164;
  final double _cardGridHeight = 260;
  final double _imageGridHeight = 184;

  const GridItems({
    required this.items,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (_cardGridWidth / _cardGridHeight),
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final _currentItem = items[index];
          return GridCard(
            shopItem: _currentItem,
            imageHeight: _imageGridHeight,
            cardHeight: _cardGridHeight,
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
            onPressed: () {
              context.router.push(
                ItemRoute(
                  shopItem: _currentItem,
                ),
              );
            },
          );
        },
        childCount: items.length,
      ),
    );
  }
}
