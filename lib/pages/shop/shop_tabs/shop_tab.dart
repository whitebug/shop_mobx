import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/widgets/mobx_scroll_view.dart';
import 'package:shop_mobx/widgets/widgets.dart';

import '../../pages.dart';

class ShopTab extends StatefulWidget {
  final ShopPageStore store;
  const ShopTab({
    required this.store,
    Key? key,
  }) : super(key: key);

  @override
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  final double _cardWidth = 164;
  final double _cardHeight = 260;
  final double _imageHeight = 184;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Observer(
        builder: (_) {
          List<ShopItem>? items = widget.store.displayedItems;
          return MobxScrollView(
            store: widget.store,
            children: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 100.0),
                ]),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (_cardWidth / _cardHeight),
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    final _currentItem = items[index];
                    return GridCard(
                      shopItem: _currentItem,
                      imageHeight: _imageHeight,
                      cardHeight: _cardHeight,
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
              ),
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
