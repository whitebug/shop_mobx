import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/models/models.dart';

class ListCard extends StatelessWidget {
  final ShopItem shopItem;
  final Widget image;
  final Widget itemName;
  final Widget itemPrice;
  final Color cardColor;
  final double itemSize;

  const ListCard({
    Key? key,
    required this.shopItem,
    required this.image,
    required this.itemName,
    required this.itemPrice,
    required this.cardColor,
    required this.itemSize,
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
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: SizedBox(
                width: constraints.maxWidth,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: cardColor,
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: itemSize,
                        height: itemSize,
                        child: image,
                      ),
                      SizedBox(
                        width: constraints.maxWidth - itemSize - 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
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
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: (itemSize) -
                  45,
              right: -12,
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
                  child: Observer(
                    builder: (_) {
                      return Icon(
                        shopItem.favorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: shopItem.favorite ? Colors.red : Colors.grey,
                      );
                    },
                  ),
                ),
                onPressed: () {
                  shopItem.changeFav();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
