import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/common.dart';
import '../utils/style.dart';
import 'dart:async';
import 'button.dart';

class EditTextField extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final dynamic onTap;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final int? maxLines;
  final int? maxLength;
  final String? initialValue;
  final Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final String? errorText;
  final Widget? suffixIcon;
  final String? hintText;
  const EditTextField(
      {Key? key,
      this.controller,
      this.labelText,
      this.errorText,
      this.focusNode,
      this.initialValue,
      this.inputFormatters,
      this.keyboardType,
      this.maxLength,
      this.maxLines,
      this.onChanged,
      this.onSaved,
      this.onTap,
      this.suffixIcon,
      this.hintText,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onTap: onTap,
        style: TextStyle(color: offWhiteColor),
        textAlign: TextAlign.center,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        initialValue: initialValue,
        // maxLines: maxLines,
        // minLines: minLines,
        maxLength: maxLength,

        // focusNode: FocusNode(),
        focusNode: focusNode,
        controller: controller,
        onSaved: onSaved,
        keyboardType: keyboardType,
        validator: (value) => validator!(value),
        // validator: formValidator,
        // autofocus: false,
        // readOnly: readOnly ?? false,
        scrollPadding: EdgeInsets.zero,
        decoration: InputDecoration(
            errorText: errorText,
            counter: Offstage(),
            labelStyle: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
            labelText: labelText,
            contentPadding: EdgeInsets.symmetric(
                // vertical: vertical != null ? vertical! : 5.0,
                // horizontal: horizontal ?? 0.
                vertical: 10,
                horizontal: 10),
            isDense: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: offWhiteColor, width: 1.5),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: offWhiteColor, width: 1.5),
            ),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: offWhiteColor, width: 1.5)),
            focusColor: offWhiteColor,
            hoverColor: offWhiteColor,
            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            hintText: hintText,
            // prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffixIconConstraints:
                BoxConstraints.tightFor(width: 35.0, height: 14.0)));
  }
}
