import 'package:flutter/material.dart';
import '../models/list.dart';
import './home_list_item_widget.dart';

class HomeListWidget extends StatelessWidget {
  Widget _itemBuilder (BuildContext context, int index) {
    return new HomeListItemWidget(index: index,);  
  }
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ListView.builder(
        itemCount: lists.length,
        itemBuilder: _itemBuilder
      );
    }
}
