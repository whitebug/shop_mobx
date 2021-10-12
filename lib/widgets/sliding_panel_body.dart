import 'package:flutter/material.dart';
import 'package:shop_mobx/pages/pages.dart';
import 'package:shop_mobx/services/services.dart';

import 'widgets.dart';

class SlidingPanelBody extends StatefulWidget {
  const SlidingPanelBody({Key? key}) : super(key: key);

  @override
  _SlidingPanelBodyState createState() => _SlidingPanelBodyState();
}

class _SlidingPanelBodyState extends State<SlidingPanelBody> {
  late ShopStore _store;
  late List<bool> _slidingButtonsList;

  @override
  void initState() {
    super.initState();
    _store = getIt<ShopStore>();
    _slidingButtonsList = List.generate(2, (index) => false);
  }

  Widget _slidingButton({
    required String text,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0),
        SlidingPanelRectangle(),
        SizedBox(height: 20.0),
        Text('Sort by', style: Theme.of(context).textTheme.headline1),
        SizedBox(height: 70.0),
        ToggleButtons(
          direction: Axis.vertical,
          children: [
            _slidingButton(text: 'Price: lowest to high'),
            _slidingButton(text: 'Price: highest to low'),
          ],
          isSelected: _slidingButtonsList,
          selectedColor: Colors.red,
          onPressed: (index) {
            setState(() {
              // remove selection
              _slidingButtonsList = [false, false];
              // select button
              _slidingButtonsList[index] = !_slidingButtonsList[index];
              // send info to the store
              _store.onSlidingButtonPressed(index: index);
              // hide sliding panel
              _store.closePanel();
            });
          },
        ),
      ],
    );
  }
}
