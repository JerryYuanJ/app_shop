import 'package:app_shop/components/cart/cart_list.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
        centerTitle: true,
        actions: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text('编辑', style: TextStyle(fontSize: 18.0),),
          ),
          SizedBox(width: 10.0,)
        ],
      ),
      body: Stack(
        children: <Widget>[
          CartList(),
        ],
      ),
    );
  }
}