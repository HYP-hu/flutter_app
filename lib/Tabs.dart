import 'package:flutter/material.dart';
import 'package:flutter_app/code/listData.dart';
import 'package:flutter_app/views/Camera/Camera.dart';
import 'package:flutter_app/views/Cart/Cart.dart';
import 'package:flutter_app/views/Category/Category.dart';
import 'package:flutter_app/views/Home/Home.dart';
import 'package:flutter_app/views/Person/Person.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({this.index = 0});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabsState(index);
  }
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _tabsList = tabsList;
  List viewBarList = [
    HomeDemo(),
    CategoryDemo(),
    CartDemo(),
    Person(),
    Camera()
  ];
  _TabsState(index) {
    this._currentIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.pink, //背景颜色
        centerTitle: true, // 标题居中显示
//          leading: Icon(Icons.menu),
        leading: IconButton(
          // 前置图标
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.pushNamed(context, '/user');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ], //后置图标,
        title: Text("A Flutter App"),
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          backgroundColor: this._currentIndex == 2? Colors.red: Colors.grey,
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              this._currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: viewBarList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // 配置底部tabs可以有多个按钮
          unselectedItemColor: Colors.grey,
//          fixedColor: Colors.red, //选中的颜色
          selectedItemColor: Colors.red,
          currentIndex: _currentIndex, //配置对应的索引值选中
          iconSize: 40, //icon的大小
          onTap: (index) {
            setState(() {
              if (index != 2) _currentIndex = index;
            });
          },
          items: _tabsList.map((item) {
            return TabsShow(item['icon'], item['size'], item['title'])
                .createBar();
          }).toList()),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                  accountEmail: Text(
                    'fluentpython@163.com',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  accountName: Text(
                    '靓仔',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/'
                        'it/u=2383915741,2608124655&fm=26&gp=0.jpg'),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                      'https://www.itying.com/images/flutter/2.png',
                    ),
                    fit: BoxFit.cover,
                  )),
                )),
              ],
            ),
            RaisedButton(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('主页',
                    style: TextStyle(color: Colors.red, fontSize: 18)),
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => Tabs(index: 0)),
                      (route) => route == null);
                });
              },
            ),
            Divider(
              height: 1,
              color: Colors.white70,
            ),
            RaisedButton(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text('个人中心',
                    style: TextStyle(color: Colors.red, fontSize: 18)),
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => Tabs(index: 3)),
                      (route) => route == null);
                });
              },
            ),
            Divider(
              height: 1,
              color: Colors.white70,
            ),
            RaisedButton(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.picture_in_picture),
                ),
                onTap: () {
                  setState(() {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/picture', arguments: '图片专属');
                  });
                },
                title: Text('图片专属',
                    style: TextStyle(color: Colors.red, fontSize: 18)),
              ),
              onPressed: () {
                print('设置中心');
              },
            ),
            Divider(
              height: 1,
              color: Colors.white70,
            ),
          ],
        ),
      ),
      endDrawer: Drawer(child: Text('右侧侧边栏')),
    );
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
