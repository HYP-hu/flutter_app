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
          scrollDirection: Axis.vertical, // 垂直列表 默认
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
              title: Text(
                '粮农组织：非洲减产抵消亚洲增产 全球缺粮国谷物总产量不变',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                  '联合国粮食及农业组织（粮农组织）9月19日发布《作物前景与粮食形势》称，大约41个国家将继续需要外部粮食援助，冲突是造成这些国家粮食高度不安全的主要原因，与此同时，恶劣的天气条件，特别是非洲的降雨短缺，使数百万人的粮食供应和获取受到严重影响'),
            ),
            ListTile(
              title: Text('粮农组织：非洲减产抵消亚洲增产 全球缺粮国谷物总产量不变'),
              subtitle: Text(
                  '联合国粮食及农业组织（粮农组织）9月19日发布《作物前景与粮食形势》称，大约41个国家将继续需要外部粮食援助，冲突是造成这些国家粮食高度不安全的主要原因，与此同时，恶劣的天气条件，特别是非洲的降雨短缺，使数百万人的粮食供应和获取受到严重影响'),
            ),
            ListTile(
              title: Text('粮农组织：非洲减产抵消亚洲增产 全球缺粮国谷物总产量不变'),
              subtitle: Text(
                  '联合国粮食及农业组织（粮农组织）9月19日发布《作物前景与粮食形势》称，大约41个国家将继续需要外部粮食援助，冲突是造成这些国家粮食高度不安全的主要原因，与此同时，恶劣的天气条件，特别是非洲的降雨短缺，使数百万人的粮食供应和获取受到严重影响'),
            ),
            ListTile(
              title: Text('粮农组织：非洲减产抵消亚洲增产 全球缺粮国谷物总产量不变'),
              subtitle: Text(
                  '联合国粮食及农业组织（粮农组织）9月19日发布《作物前景与粮食形势》称，大约41个国家将继续需要外部粮食援助，冲突是造成这些国家粮食高度不安全的主要原因，与此同时，恶劣的天气条件，特别是非洲的降雨短缺，使数百万人的粮食供应和获取受到严重影响'),
            ),
            ListTile(
              title: Text('粮农组织：非洲减产抵消亚洲增产 全球缺粮国谷物总产量不变'),
              subtitle: Text(
                  '联合国粮食及农业组织（粮农组织）9月19日发布《作物前景与粮食形势》称，大约41个国家将继续需要外部粮食援助，冲突是造成这些国家粮食高度不安全的主要原因，与此同时，恶劣的天气条件，特别是非洲的降雨短缺，使数百万人的粮食供应和获取受到严重影响'),
            )
          ],
        ),
      ),
    );
  }
}
