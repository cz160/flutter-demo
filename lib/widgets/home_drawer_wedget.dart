
import 'package:flutter/material.dart';
import '../configs/colors.dart';

class DrawerWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Drawer(
            //可滚动的列表控件。ListView是最常用的滚动widget，它在滚动方向上一个接一个地显示它的孩子。在纵轴上，孩子们被要求填充ListView。
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('铭记', style: TextStyle(),),
                  accountEmail: Text('1604506998@qq.com', style: TextStyle(),),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('http://d.hiphotos.baidu.com/image/h%3D300/sign=e6cb69522534349b6b066885f9eb1521/91ef76c6a7efce1b5ef04082a251f3deb58f659b.jpg'),
                  ),
                  //装饰图
                  decoration: BoxDecoration(
                    color: baseColor,
                    image: DecorationImage(
                      image: NetworkImage('http://d.hiphotos.baidu.com/image/h%3D300/sign=e6cb69522534349b6b066885f9eb1521/91ef76c6a7efce1b5ef04082a251f3deb58f659b.jpg'),
                      fit: BoxFit.cover, //使其覆盖全部
                      //透明
                      // colorFilter: ColorFilter.mode(
                      //   Colors.yellow[400].withOpacity(0.6),
                      //   BlendMode.hardLight
                      // )
                    )
                  ),
                ),
                ListTile(
                  title: Text('activity', textAlign: TextAlign.right),
                  trailing: Icon(Icons.local_activity),
                  //点击关闭这个侧滑框
                  onTap: () { Navigator.pop(context); }
                ),
                ListTile(
                  title: Text('airport', textAlign: TextAlign.right),
                  trailing: Icon(Icons.local_airport), //尾随
                  onTap: () { Navigator.pop(context); }
                ),
                ListTile(
                  title: Text('ATM', textAlign: TextAlign.right),
                  trailing: Icon(Icons.local_atm),
                  onTap: () { Navigator.pop(context); }
                )
              ],
            ),
          );
    }
}
