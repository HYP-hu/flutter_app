import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('A Flutter App'),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Center(
              child: Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink,
                  ),
                  borderRadius: BorderRadius.circular(150),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://pics1.baidu.com/feed/d1a20cf431adcbef778cb53150f456d8a3cc9f2a.jpeg?token=8c7f047de9dec7effb76c22bc2f0c80d&s=E912E81B554D48ED1A6588DA010050B3'),
              title: Text(
                '负利率房贷都出现了，世界经济将走向何方？',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text('观察者网 09-20 16:36'),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.network(
                  'https://pics7.baidu.com/feed/0823dd54564e925871bc7bd058d5a95dcdbf4ee5.png?token=895c6b3a36aca8d6fe0e3586e15d74c0&s=E570AA674BFC84DA44590C0B000070C2'),
              title: Text('复盘52涨停股：华为Mate30发布电子板块再爆涨停潮'),
              subtitle: Text('东方财富网 09-20 16:19'),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('韩副总理：韩国需从根本考虑是否放弃发展中国家待遇'),
              subtitle: Text('观察者网 09-20 15:29'),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.network(
                  'https://pics4.baidu.com/feed/3b292df5e0fe9925c1a3d6222eae26da8db17124.png?token=79bc851f1c4c2c2064ae0a97aef83d76&s=7EAA3C62877C6C2218FDA5D3030080B2'),
              title: Text('又降息了，1个月来累计下降11基点'),
              subtitle: Text('观察者网 09-20 10:21'),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.network(
                  'https://pics6.baidu.com/feed/3b87e950352ac65c37d5d698c7c0ca1491138ac4.jpeg?token=a8a6e914f9f983670b6b63a4c2c1c075&s=D9711FD0C30953473CE83E45030030FE'),
              title: Text('带动5亿人参与低碳生活 蚂蚁森林获联合国“地球卫士奖”'),
              subtitle: Text('中国日报网 09-20 13:34'),
            )
          ],
        ),
      ),
    );
  }
}
