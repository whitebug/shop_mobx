import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_mobx/pages/pages.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
    required this.store,
  }) : super(key: key);

  final ShopPageStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      List<String>? categories = store.categories;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                final currentCategory = categories[index];
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ElevatedButton(
                    child: Text(currentCategory),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      store.getItemsByCategory(
                        category: currentCategory,
                      );
                      store.animateTo(jump: 0);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      );
    });
  }
}