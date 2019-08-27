import 'package:flutter/material.dart';
import './pages/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Jerry商城',
        // debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFFFF5000),
        ),
        home: IndexPage(),
      ),
    );
  }
}