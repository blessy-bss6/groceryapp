import 'package:flutter/material.dart';
import 'package:grocers/Elements/baseAppbar.dart';

import '../scrpart/orderDetbody.dart';

class OrderDeatilsScreen extends StatelessWidget {
  const OrderDeatilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        centerTitle: true,
        title: 'Order Deatils',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [OrderDetailTop()],
        ),
      ),
    );
  }
}

class OrderDetailTop extends StatelessWidget {
  const OrderDetailTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [OrderIdContent(), OrderIdAdrContent(), OrderIdAdrContent()],
      ),
    );
  }
}
