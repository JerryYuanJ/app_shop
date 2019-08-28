import 'package:app_shop/components/category/left_list.dart';
import 'package:app_shop/components/category/right_content.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  Widget _appBarTitle = Text('分类');
  Icon _searchIcon = Icon(Icons.search);
  TextEditingController _searchController = TextEditingController();
  String searchText = '';
  Widget _appBody = Row(
    children: <Widget>[
      LeftList(),
      RightContent(),
    ],
  );

  _CategoryPageState() {
    _searchController.addListener(() {
      if (_searchController.text.isEmpty) {
        setState(() {
          searchText = '';
        });
      } else {
        setState(() {
          searchText = _searchController.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void _onSearchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        _searchIcon = Icon(Icons.close);
        _appBarTitle = TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: '湖人冠军球帽',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.white70),
          ),
          autofocus: true,
        );
      } else {
        _searchIcon = Icon(Icons.search);
        _appBarTitle = Text('分类');
        _searchController.text = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarTitle,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: _searchIcon,
            onPressed: _onSearchPressed,
          ),
        ],
      ),
      body: _appBody,
    );
  }
}
