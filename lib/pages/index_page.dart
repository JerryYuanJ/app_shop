import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'member_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>{

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页'),),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), title: Text('分类'),),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), title: Text('购物车'),),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), title: Text('个人中心'),),
  ];

  final List<Widget> tabContents = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage(),
  ];

  int _currentTabIndex = 0;
  Widget currentPage;

  @override
  void initState() {
    currentPage = tabContents[_currentTabIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomTabs,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTabIndex,
        onTap: (int index){
          setState(() {
            _currentTabIndex = index;
            currentPage = tabContents[index];
          });
        },
      ),
      // body: currentPage,
      body: IndexedStack(
        index: _currentTabIndex,
        children: tabContents,
      ),
    );
  }
}