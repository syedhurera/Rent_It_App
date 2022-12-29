import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  final tagList = ['fashion', 'Electronic Appliances', 'Home Appliances', 'Sports', 'Automobiles', 'Properties', 'Crockery'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: tagList
            .map(
              (e) => Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  e,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
