import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_mobx/services/router.gr.dart';
import 'package:shop_mobx/services/services.dart';
import 'package:shop_mobx/widgets/widgets.dart';
import 'shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late ShopStore store;

  @override
  void initState() {
    super.initState();
    store = getIt<ShopStore>();
    store.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: [
          ShopTabRouter(),
          ShopTabRouter(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'someTitle',
                style: Theme.of(context).textTheme.headline1,
              ),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Stack(
                children: [
                  /// Shop tabs and tab bar
                  child,
                  /// Filters that on the top of the screen
                  FilterBar(store: store),
                  /// Sliding panel with more filters
                  MobxSlidingPanel(
                    panel: const SlidingPanelBody(),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Shop',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Users',
                  icon: Icon(Icons.shopping_cart_outlined),
                ),
              ],
            ),
          );
        });
  }
}
