import 'package:flutter/material.dart';
import 'package:app_shop/service/api_home.dart';

class GoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getGoods(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List goods = snapshot.data['data'];
          return Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 8.0,
            children: goods.map((good) {
              return SingleGoodCard(
                image: good['url'],
                name: good['title'],
                price: good['price'],
              );
            }).toList(),
          );
        }
        return Container(
          child: Text('loading'),
        );
      },
    );
  }
}

class SingleGoodCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  SingleGoodCard({this.image, this.name, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.49,
      height: 260.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // 图片占位
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/image.png',
            image: image
          ),
          SizedBox(height: 4,),
          Text(name, maxLines: 2, overflow: TextOverflow.ellipsis,),
          SizedBox(height: 4,),
          Text(
            '¥ ' + price,
            style: TextStyle(
              color: Colors.red,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
