import 'package:flutter/material.dart';
import 'package:app_shop/service/api_home.dart';

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List _categorys = snapshot.data['data'];
          // 这个可以阻止这个分类grid的上下滚动
          return IgnorePointer(
            child: GridView.count(
              shrinkWrap: true,
              primary: true,
              crossAxisCount: 5,
              childAspectRatio: 0.8,
              children: _categorys.map((item) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        item['icon'],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(item['name']),
                    ],
                  ),
                );
              }).toList(),
            ),
          );
        }

        return Container(
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
        );
      },
      future: getCategory(),
    );
  }
}
