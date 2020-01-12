import 'package:flutter/material.dart';
import 'package:flutter_app/code/listData.dart';
import 'package:flutter_app/views/Cart/Cart.dart';
import 'package:flutter_app/views/Category/Category.dart';
import 'package:flutter_app/views/Home/Home.dart';
import 'package:flutter_app/views/Person/Person.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _tabsList = tabsList;
  List viewBarList = [HomeDemo(), CategoryDemo(), CartDemo(), Person()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("A Flutter App"),
        ),
        body: viewBarList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // 配置底部tabs可以有多个按钮
            unselectedItemColor: Colors.grey,
            fixedColor: Colors.red, //选中的颜色
            currentIndex: _currentIndex, //配置对应的索引值选中
            iconSize: 40, //icon的大小
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: _tabsList.map((item) {
              return TabsShow(item['icon'], item['size'], item['title'])
                  .createBar();
            }).toList()));
  }
}

class TabsShow {
  IconData icon;
  double size;
  String title;
  TabsShow(this.icon, this.size, this.title);
  BottomNavigationBarItem createBar() {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          size: size,
        ),
        title: Text(title));
  }
}
