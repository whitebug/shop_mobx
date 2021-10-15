import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/services/services.dart';
import 'package:shop_mobx/widgets/mobx_scroll_view.dart';
import 'package:shop_mobx/widgets/widgets.dart';

import '../../pages.dart';

class ShopTab extends StatelessWidget {
  const ShopTab({Key? key}) : super(key: key);

  // grid card
  final double _cardGridWidth = 164;
  final double _cardGridHeight = 260;
  final double _imageGridHeight = 184;
  // list card
  final double _cardListHeight = 120;

  Widget _grid({required List<ShopItem> items}) {
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
          );
        },
        childCount: items.length,
      ),
    );
  }

  Widget _list({required List<ShopItem> items}) {
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
                  ? _grid(items: items)
                  : _list(items: items),
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
