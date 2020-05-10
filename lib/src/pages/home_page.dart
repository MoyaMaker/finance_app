import 'package:finance_app/src/utils/custom_colors.dart';
import 'package:finance_app/src/widgets/account_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('Home page'),
            _accounts(MediaQuery.of(context).size)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget _accounts(Size size) {
    final _itemWidth = size.width * 0.55;
    final _freeSpace = (size.width * 0.225) - 20;
    final _offsetX = _itemWidth + 20;

    return Container(
      width: size.width,
      height: size.height * 0.25,
      child: Swiper(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return AccountCard(title: 'Account $index', amount: '\$${index * 12.4}');
        },
        itemWidth: _itemWidth,
        itemHeight: _itemWidth * 0.5,
        layout: SwiperLayout.CUSTOM,
        customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 4).addTranslate([
          Offset((_offsetX + _freeSpace) * -1, 0.0),
          Offset(_freeSpace * -1, 0.0),
          Offset(_offsetX - _freeSpace, 0.0),
          Offset((_offsetX * 2) - _freeSpace, 0.0),
        ]),
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            activeColor: CustomColors.main,
            color: CustomColors.unselected,
            size: 8.0,
            activeSize: 12.0,
          )
        ),
      ),
    );
  }
}