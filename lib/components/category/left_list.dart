import 'package:flutter/material.dart';

class LeftList extends StatefulWidget {
  @override
  _LeftListState createState() => _LeftListState();
}

class _LeftListState extends State<LeftList> {
  final List<String> mockCates = [
    '热销精品',
    '电脑办公',
    '个护清洁',
    '汽车生活',
    '男装女装',
    '内衣配饰',
    '食品生鲜',
    '酒水饮料',
    '家具家装',
    '家居橱柜',
    '箱包手袋',
    '钟表珠宝',
    '玩具乐器',
    '医药保健',
    '生活旅行',
    '艺术邮币',
    '二手商品',
    '礼品鲜花',
    '宠物生活',
    '手机数码',
    '家用电器',
  ];
  num _selectedCat = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedCat = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
              decoration: BoxDecoration(
                color: _selectedCat == index ? Colors.grey[200] : Colors.white,
              ),
              child: Text(
                mockCates[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          );
        },
        itemCount: mockCates.length,
      ),
    );
  }
}
