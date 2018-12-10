import 'package:flutter/material.dart';
//有状态部件
class BottomNavigationBarWedget extends StatefulWidget {
  @override
    _BottomNavigationBarWedget createState() => _BottomNavigationBarWedget();
}

class _BottomNavigationBarWedget extends State<BottomNavigationBarWedget> {
  void _onItemTapped (int index) {    
    setState(() {
      _currentIndex = index;
    });
  }
  int _currentIndex = 0;
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return BottomNavigationBar( 
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
              BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
            ],
            currentIndex: _currentIndex, //当前选中的
            // fixedColor: Colors.deepPurple,
            onTap: _onItemTapped, //点击改变下标的值
          );
    }
}