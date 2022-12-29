import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/widgets/category.dart';

import '../home/widgets/reuseable_text.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children : [        
        ReuseableText('Categories'),
        Container(
          width: double.infinity,
          height: 180,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext ctx, int index) {
                return Category(index);
              }),
        ),
    ]);
  }
}
