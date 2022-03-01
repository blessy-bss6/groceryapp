import 'package:flutter/material.dart';
import 'package:grocers/utils/common.dart';
import 'package:grocers/utils/style.dart';

import '../Screen/faqScr.dart';
import '../Screen/notificationScr.dart';
import '../Screen/wishlistScr.dart';
import '../common/button.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      //  orc Custom Header file
      CusDrawerHeader(),

      heightSizedBox(25.0),

      CusDrawerList(
        title: 'Dashboard',
        icon: Icons.speed,
        // submitMethod: LoginScr(),
      ),
      CusDrawerList(title: 'My Account', icon: Icons.person),
      CusDrawerList(
        title: 'Your Orders',
        icon: Icons.shopping_bag,
      ),
      CusDrawerList(
        title: 'Wishlist',
        icon: Icons.favorite_border,
        submitMethod: WishListScreen(),
      ),
      CusDrawerList(title: 'Manage Address', icon: Icons.location_on),
      CusDrawerList(title: 'Payment ', icon: Icons.payment),
      CusDrawerList(title: 'Offers', icon: Icons.percent_outlined),
      CusDrawerList(
          title: 'Notifictions',
          icon: Icons.payment,
          submitMethod: NotificationScreen()),
      CusDrawerList(
        title: 'FAQs',
        icon: Icons.translate,
        submitMethod: FaqScreen(),
      ),
      CusDrawerList(title: 'Help', icon: Icons.perm_phone_msg_rounded),
      CusDrawerList(
        title: 'Logout',
        icon: Icons.logout,
      ),
    ]));
  }
}

/* -------------------------------------------------------------------------- */
/*               // ! P:-2. CUSTOM DRAWER LIST VIEW DATA                     */
/* -------------------------------------------------------------------------- */

class CusDrawerList extends StatelessWidget {
  final Widget? submitMethod;
  final String? title;
  final IconData? icon;

  CusDrawerList({
    Key? key,
    this.title,
    this.icon,
    this.submitMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => navigationPush(context, submitMethod!),
        // {
        //   Navigator.of(context)
        //       .push(MaterialPageRoute(builder: (BuildContext context) {
        //     return submitMethod();
        //   }));
        // },
        child: ListTile(
          title: Txt(
              t: title!,
              style: TextStyle(fontFamily: montserratMedium, fontSize: 14)),
          leading: Icon(
            icon,
            size: 20,
            color: Colors.green,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ));
  }
}

class CusDrawerHeader extends StatelessWidget {
  CusDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Txt(
              t: 'Hey, Username! ',
              style: labelTextStyle,
            ),
          ),
          IconButton(
            icon: Icon(Icons.clear),
            iconSize: 25,
            onPressed: () => navigationPop(context),
          )
        ]);
  }
}
