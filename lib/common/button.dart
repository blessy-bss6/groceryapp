import 'package:flutter/material.dart';
import '../utils/style.dart';

class Txt extends StatelessWidget {
  final String? t;
  final Color? color;
  final double? fontSize;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final int? maxLines;
  const Txt(
      {Key? key,
      this.t,
      this.color,
      this.fontFamily,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.maxLines,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      t!,
      textAlign: textAlign ?? null,
      maxLines: maxLines ?? null,
      style: style ??
          TextStyle(
            color: color ?? null,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? null,
            fontFamily: fontFamily ?? montserratMedium,
          ),
    );
  }
}

// ! Button For Everything Screen
class Btn extends StatelessWidget {
  final String? btnName;
  final dynamic onTap;
  final TextStyle? style;
  final double? width;
  final double? height;
  final Color? color;
  final Color? txtColor;
  const Btn(
      {Key? key,
      this.btnName,
      this.color,
      this.txtColor,
      this.width,
      this.height,
      this.onTap,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: color ?? blackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(3),
            topRight: Radius.circular(3),
            bottomLeft: Radius.circular(3),
            bottomRight: Radius.circular(3),
          ),
        ),
        width: width ?? null,
        height: height ?? null,
        child: Center(
          child: Txt(
            t: btnName!,
            style: style ?? null,
            color: txtColor ?? offWhiteColor,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
