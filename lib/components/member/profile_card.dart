import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {

  TextStyle _getBoldTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(8.0),
      color: Colors.grey[300],
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  print('click card');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          child: Text('J'),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 20.0),
                        CenteredBox(
                          align: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Jerry',
                              style: _getBoldTextStyle(),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text('hello world'),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CenteredBox(
                    children: [
                      Text('收藏夹'),
                      SizedBox(height: 6.0),
                      Text(
                        '12',
                        style: _getBoldTextStyle(),
                      ),
                    ],
                  ),
                  CenteredBox(
                    children: [
                      Text('关注店铺'),
                      SizedBox(height: 6.0),
                      Text(
                        '23',
                        style: _getBoldTextStyle(),
                      ),
                    ],
                  ),
                  CenteredBox(
                    children: [
                      Text('购物券'),
                      SizedBox(height: 6.0),
                      Text(
                        '3',
                        style: _getBoldTextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CenteredBox extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment align;
  CenteredBox({this.children, this.align = CrossAxisAlignment.center});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: align,
      children: children,
    );
  }
}
