import 'package:flutter/material.dart';
import 'package:app_shop/components/member/profile_card.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '个人中心',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            child: ProfileCard(),
          ),
          ListTile(
            title: Text('Setting'),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.keyboard_arrow_right),
            subtitle: Text('customerize your setting'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
