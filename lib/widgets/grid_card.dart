import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/widgets/widgets.dart';

class GridCard extends StatelessWidget {
  final ShopItem shopItem;
  final double imageHeight;
  final double cardHeight;
  final Widget image;
  final Widget itemName;
  final Widget itemPrice;
  final Color cardColor;
  final void Function()? onPressed;

  const GridCard({
    Key? key,
    required this.shopItem,
    required this.imageHeight,
    required this.cardHeight,
    required this.image,
    required this.itemName,
    required this.itemPrice,
    required this.cardColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        return Stack(
          children: [
            InkWell(
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * imageHeight / cardHeight,
                      width: constraints.maxWidth,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: cardColor,
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: image,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: itemName,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: itemPrice,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: (constraints.maxHeight * imageHeight / cardHeight) -
                  (36 / 1.6),
              right: -5,
              child: LikeButton(shopItem: shopItem),
            ),
          ],
        );
      },
    );
  }
}
