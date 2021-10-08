import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shop_mobx/router.gr.dart';
import 'package:shop_mobx/widgets/widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final store = ShopPageStore();
  late PanelController _panelController;

  @override
  void initState() {
    super.initState();
    store.getAll();
    _panelController = PanelController();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: [
          ShopTabRouter(store: store),
          ShopTabRouter(store: store),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('someTitle'),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Container(
              color: Colors.grey[200],
              child: Stack(
                children: [
                  /// Shop tabs and tab bar
                  child,
                  /// Filters that on the top of the screen
                  FilterBar(store: store),
                  SlidingUpPanel(
                    panel: const Center(
                      child: Text("This is the sliding Widget"),
                    ),
                    minHeight: 0,
                    //renderPanelSheet: false,
                    controller: _panelController,
                    backdropEnabled: true,
                    borderRadius: BorderRadius.circular(20.0),
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
