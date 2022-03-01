import 'package:flutter/material.dart';
import 'package:grocers/Screen/login.dart';
import 'package:grocers/utils/common.dart';
import 'package:grocers/utils/style.dart';

import '../common/button.dart';

class AuthOptionScr extends StatelessWidget {
  const AuthOptionScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
              image: AssetImage('assets/images/bg02.png'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Text for Welcome Page
            WelcomeTxt(),

            //  Btn
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, left: 30.0, right: 30.0, bottom: 40),
              child: Column(
                children: [
                  Btn(
                    onTap: () => navigationPush(context, LoginScr()),
                    width: double.maxFinite,
                    height: 40,
                    btnName: 'LOGIN AS A CUSTOMER',
                    color: bottomSheet,
                  ),
                  heightSizedBox(25.0),
                  Btn(
                    onTap: () => navigationPush(context, LoginScr()),
                    width: double.maxFinite,
                    height: 40,
                    color: blackColor,
                    btnName: 'LOGIN AS A SELLER',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WelcomeTxt extends StatelessWidget {
  final String? msg;
  final String? title;
  final Color? color1;
  final Color? color2;
  final double? fontSize1;
  final double? fontSize2;
  const WelcomeTxt(
      {Key? key,
      this.msg,
      this.title,
      this.color1,
      this.color2,
      this.fontSize1,
      this.fontSize2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Txt(
          t: title ?? 'Hello, Good Day ! ',
          fontSize: fontSize1 ?? 17,
          color: color1 ?? offWhiteColor,
        ),
        Txt(
          t: msg ?? 'descrition..........................................',
          fontSize: fontSize2 ?? 15,
          color: color2 ?? offWhiteColor,
        ),
      ],
    );
  }
}
