import 'package:flutter/material.dart';

class CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: double.infinity,
      child: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            StoreTitle(),
            Divider(color: Colors.grey[400]),
            CardItem(),
            CardItem(),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio(
          value: true,
          activeColor: Theme.of(context).primaryColor,
          groupValue: true,
          onChanged: (value) {},
        ),
        Container(
          height: 90,
          width: 90,
          color: Colors.grey,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'adidas跑鞋【黑武士跑鞋】2019最新款休闲运动跑鞋林俊杰同款',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '699.88',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 40,
                          height: 20,
                          child: OutlineButton(
                            child: Text('-'),
                            onPressed: () {},
                          ),
                        ),
                        Text('12'),
                        ButtonTheme(
                          minWidth: 40,
                          height: 20,
                          child: OutlineButton(
                            child: Text('+'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class StoreTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Radio(
                  value: true,
                  activeColor: Theme.of(context).primaryColor,
                  groupValue: true,
                  onChanged: (value) {},
                ),
                Text('阿迪达斯官方旗舰店'),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
