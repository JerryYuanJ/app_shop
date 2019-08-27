import 'package:app_shop/components/home/category_grid.dart';
import 'package:app_shop/components/home/good_card.dart';
import 'package:flutter/material.dart';
import 'package:app_shop/components/home/banner_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('helo');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.menu),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: ListView(
          children: <Widget>[
            BannerList(),
            SizedBox(height: 20.0),
            CategoryGrid(),
            GoodCard(),
            SizedBox(height: 24.0,)
          ],
        ),
      ),
    );
  }
}
