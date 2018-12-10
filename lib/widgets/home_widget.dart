
import 'package:flutter/material.dart';
import './home_drawer_wedget.dart';
import './home_list_widget.dart';
import './home_bottom_wedget.dart';
import './home_ip_wedget.dart';
class HomeWidget extends StatelessWidget {
  
  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Sample Code'),
            //顶部左边
            // leading: IconButton(
            //   icon: const Icon(Icons.menu),
            //   //从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板。
            //   onPressed: () { Scaffold.of(context).openDrawer(); },
            //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            // ),
            //顶部右边按钮
            actions: <Widget> [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () { debugPrint('search'); },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () { debugPrint('search'); },
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_activity)
                ),
                Tab(
                  icon: Icon(Icons.local_airport)
                ),
                Tab(
                  icon: Icon(Icons.local_atm)
                )
              ],
            ),
            // elevation:  0.2
          ),
          //每一个Tab对应的视图
          body: TabBarView(
            children: <Widget>[
              HomeListWidget(),
              HomeIPWedget(),
              Icon(Icons.local_atm)
            ],
          ),
          //测滑框
          drawer : DrawerWidget(),
          //底部按钮
          bottomNavigationBar: BottomNavigationBarWedget()
        ),
      );   
      
    }
}




