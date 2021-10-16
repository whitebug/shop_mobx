import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/widgets/widgets.dart';

class ItemPage extends StatefulWidget {
  /// Item to be sold
  final ShopItem shopItem;

  const ItemPage({
    required this.shopItem,
    Key? key,
  }) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  final _imageHeight = 413.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.shopItem.title,
          style: Theme.of(context).textTheme.headline1,
        ),
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).bottomAppBarColor,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: MobxScrollView(
            children: [
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: _imageHeight,
                    child: CachedNetworkImage(
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      imageUrl: widget.shopItem.image,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          widget.shopItem.title,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      LikeButton(
                        shopItem: widget.shopItem,
                        width: 40.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          widget.shopItem.category.capitalizeFirst(),
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      Text(
                        '\$${widget.shopItem.price}',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    widget.shopItem.description,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'ADD TO CART',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Capitalize first letter
extension StringExtension on String {
  String capitalizeFirst() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
