import 'package:flutter/material.dart';
import 'package:grocers/Elements/baseAppbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        centerTitle: true,
        title: 'Order',
      ),
    );
  }
}
