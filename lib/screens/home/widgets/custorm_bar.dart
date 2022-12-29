import 'package:flutter/material.dart';

import '../../cart.dart';
import '../../feeds.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Rent It',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Stack(

           
             
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: Offset(0, 1),
                      )
                    ]),
                    
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.grey,
                  
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  child:  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(CartScreen.routeName);
                    },
                  ),
                   
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  width: 10,
                  height: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
