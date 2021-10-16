import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/models/models.dart';

class LikeButton extends StatelessWidget {
  final ShopItem shopItem;
  final double width;

  const LikeButton({
    Key? key,
    required this.shopItem,
    this.width = 36,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: Colors.white,
      ),
      child: Container(
        width: width,
        height: width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Observer(
          builder: (_) {
            return SizedBox(
              width: width,
              height: width,
              child: Icon(
                shopItem.favorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: shopItem.favorite
                    ? Colors.red
                    : Colors.grey,
              ),
            );
          },
        ),
      ),
      onPressed: () {
        shopItem.changeFav();
      },
    );
  }
}