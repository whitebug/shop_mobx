import 'package:flutter/material.dart';
import 'package:shop_mobx/models/models.dart';

class GridCard extends StatelessWidget {
  final ShopItem shopItem;
  final double imageHeight;
  final double cardHeight;
  final Widget image;
  final Widget itemName;
  final Widget itemPrice;
  final Color cardColor;
  const GridCard({
    Key? key,
    required this.shopItem,
    required this.imageHeight,
    required this.cardHeight,
    required this.image,
    required this.itemName,
    required this.itemPrice,
    required this.cardColor,
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
            Padding(
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
            Positioned(
              top: (constraints.maxHeight * imageHeight / cardHeight) -
                  (36 / 1.6),
              right: -5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: Colors.white,
                ),
                child: Container(
                  width: 36,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        );
      },
    );
  }
}
