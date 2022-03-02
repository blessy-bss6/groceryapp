import 'package:flutter/material.dart';
import 'package:grocers/common/button.dart';
import 'package:grocers/utils/style.dart';

class OrderIdContent extends StatelessWidget {
  final dynamic stats;
  const OrderIdContent({Key? key, this.stats = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Txt(
                t: '#52525522',
                style: labelTextStyle,
              ),
              Container(
                  child: stats == true
                      ? Txt(
                          t: 'progress',
                          color: Color.fromARGB(255, 218, 151, 26),
                        )
                      : null)
            ],
          ),
          Txt(
            t: '24 Sep,2020',
            style: labelTextStyle,
          ),
        ],
      ),
    );
  }
}

// !n
class OrderIdAdrContent extends StatelessWidget {
  final dynamic onChanged;
  final dynamic groupVal;
  final String? t2;
  const OrderIdAdrContent({Key? key, this.groupVal, this.onChanged, this.t2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Txt(
            t: 'picked 24 Sep,2020',
            style: labelTextStyle,
          ),
          RadioListTile(
            value: 1,
            groupValue: groupVal,
            onChanged: onChanged,
            title: Txt(t: t2),
          )
        ],
      ),
    );
  }
}
