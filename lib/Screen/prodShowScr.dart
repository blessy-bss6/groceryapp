import 'package:flutter/material.dart';
import 'package:grocers/Elements/baseAppbar.dart';
import 'package:grocers/Screen/wishlistScr.dart';
import 'package:grocers/utils/style.dart';

import '../Elements/all_list_content.dart';
import '../common/button.dart';
import '../scrpart/imgslider.dart';

class ProductShowScreen extends StatefulWidget {
  ProductShowScreen({Key? key}) : super(key: key);

  @override
  State<ProductShowScreen> createState() => _ProductShowScreenState();
}

class _ProductShowScreenState extends State<ProductShowScreen> {
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
              title: Txt(t: 'Fruits', style: labelTextStyle),
              actions: [
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {},
                ),
              ],
              // bottom: PreferredSize(
              //   preferredSize: Size.fromHeight(55),
              //   child: DefaultTabController(
              //       length: tabs.length,
              //       child: TabBar(
              //         isScrollable: true, // Required
              //         unselectedLabelColor: Colors.white, // Other tabs color
              //         labelPadding: EdgeInsets.symmetric(
              //             horizontal: 10), // Space between tabs
              //         indicator: UnderlineTabIndicator(
              //           borderSide: BorderSide(
              //               color: Colors.orange, width: 2), // Indicator height
              //           insets: EdgeInsets.symmetric(
              //               horizontal: 20), // Indicator width
              //         ),
              //         tabs: tabs,
              //       )),
              // ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              // ChaNGE BUTTON NAME AND ICON
              dynamic clBtn = false;
              callBackf(dynamic clBtn) {
                if (clBtn == false) {
                  setState(() {
                    clBtn = true;
                    print('$clBtn  $index');
                  });
                } else {
                  setState(() {
                    clBtn = false;
                  });
                }
              }

              // return Container(
              //   margin: const EdgeInsets.all(10.0),
              //   decoration: BoxDecoration(
              //       border: Border.all(
              //           width: 1, color: Color.fromARGB(255, 221, 214, 214))),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       ImgIcon(
              //         src: 'assets/images/apple.png',
              //         width: 120,
              //         height: 100,
              //       ),
              //       ProdMidContent(
              //         prodNumber: index,
              //       ),
              //       // lineRight()
              //       ProdLastContent(
              //         onTap: () {
              //           if (clBtn == false) {
              //             setState(() {
              //               clBtn = true;
              //               print('$clBtn  $index');
              //             });
              //           } else {
              //             setState(() {
              //               clBtn = false;
              //             });
              //           }
              //         },
              //         btnName: clBtn != true ? '  ADD   ' : ' Minus ',
              //         src: 'assets/icons/like-icon.png',
              //       )
              //     ],
              //   ),
              // );
              return Container(
                child: ProdShowContent(
                  clBtn: clBtn, onTap: callBackf,
                  // src: 'assets/images/vegetables.png',
                  btnName: clBtn != true ? '  ADD   ' : ' Minus ',
                ),
              );
            }, childCount: 11))
          ],
        ),
      );
    }

    return Scaffold(
      body: CircularProgressIndicator(),
    );
  }
}
