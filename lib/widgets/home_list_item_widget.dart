
import 'package:flutter/material.dart';
import '../models/list.dart';

class HomeListItemWidget extends StatefulWidget {
  HomeListItemWidget({Key key, this.index}) : super(key: key);

  final int index;

  @override
  _HomeListItemState createState() => new _HomeListItemState();
}


class _HomeListItemState extends State<HomeListItemWidget> {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        padding: EdgeInsets.all(10),
        color:Colors.grey[100],
        child: Column(
          children: <Widget>[
            Image.network(
              lists[widget.index].img,
            ),
            SizedBox(height: 10,),
            Text(lists[widget.index].name,
              style: Theme.of(context).textTheme.title,
            ),      
            Text(
              lists[widget.index].all_click + ' 浏览',
              style: Theme.of(context).textTheme.subhead,  
              textAlign: TextAlign.center,     
            ),
            Text(
              lists[widget.index].favorites + ' 收藏',
              style: Theme.of(context).textTheme.subhead,
              textAlign: TextAlign.center,  
            )
          ],
        ),
      
      );
    }
}

