import 'package:flutter/material.dart';
import 'package:grocers/Elements/baseAppbar.dart';
import 'package:grocers/utils/style.dart';

import '../Elements/all_list_content.dart';
import '../common/button.dart';

class AllProdListData extends StatefulWidget {
  AllProdListData({Key? key}) : super(key: key);

  @override
  State<AllProdListData> createState() => _AllProdListDataState();
}

class _AllProdListDataState extends State<AllProdListData> {
  final List item = [
    'All',
    'Banana',
    'Orange',
    'Mango',
    'All2',
    'Banana2',
    'Orange2',
    'Mango2'
        'All3',
    'Banana3',
    'Orange3',
    'Mango3'
  ];

  final List<Widget> tabs = [];

  dynamic cart;

  dynamic cartItem;

  @override
  Widget build(BuildContext context) {
    if (item.length > 0) {
      for (var i in item) {
        tabs.add(Tab(
          text: i,
        ));
      }

      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: true,
              title: Txt(t: 'Friuts', style: labelTextStyle),
              actions: [
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {},
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(55),
                child: DefaultTabController(
                    length: tabs.length,
                    child: TabBar(
                      isScrollable: true, // Required
                      unselectedLabelColor: Colors.white, // Other tabs color
                      labelPadding: EdgeInsets.symmetric(
                          horizontal: 10), // Space between tabs
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            color: Colors.orange, width: 2), // Indicator height
                        insets: EdgeInsets.symmetric(
                            horizontal: 20), // Indicator width
                      ),
                      tabs: tabs,
                    )),
              ),
            ),
            // Other Sliver Widgets

            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                child: ProdListContent(
                  imgUrl: 'assets/images/vegetables.png',
                  // onTap: () {
                  //   setState(() {
                  //     cart = true;
                  //   });
                  // },
                  // cart: cart,
                  // childCart: ,
                  // cartItem: cartItem ?? 0,
                ),
              );
            }, childCount: 10))
          ],
        ),
      );
    }

    return Scaffold(
      body: CircularProgressIndicator(),
    );
  }
}
