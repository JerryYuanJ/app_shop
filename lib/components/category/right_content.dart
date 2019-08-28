import 'package:flutter/material.dart';
import 'package:app_shop/service/api_home.dart';

class RightContent extends StatefulWidget {
  @override
  _RightContentState createState() => _RightContentState();
}

class _RightContentState extends State<RightContent> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getGoods(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List list = snapshot.data['data'];
          return Expanded(
            flex: 3,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10.0),
              children: list.map((item) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        item['url'],
                        height: 80,
                      ),
                      Text(
                        item['title'],
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          );
        }
        return Text('loading');
      },
    );
  }
}
