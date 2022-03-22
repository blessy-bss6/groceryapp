import 'package:flutter/material.dart';
import 'package:grocers/Elements/baseAppbar.dart';
import 'package:grocers/common/button.dart';
import 'package:grocers/utils/style.dart';

class SelCategoryScreen extends StatelessWidget {
  const SelCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        boolLeading: true,
        centerTitle: true,
        title: 'Category',
      ),

      // body: CustomScrollView(
      //   slivers: [

      //   ],
      // ),
      body: Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: ((context, index) => ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      'Category name',
                      style: labelTextStyle,
                    ),
                    Wrap(
                      children: List.generate(
                        10,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FilterChip(
                              label: Text('index $index'),
                              onSelected: (val) {},
                              // disabledColor :
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}

class StackOver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 10.0,
          right: 10.0,
        ),
        child: Wrap(children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return FilterChip(
                label: Text('index $index'),
                onSelected: (val) {},
              );
            },
          ),
        ]),
      ),
    );
  }
}
