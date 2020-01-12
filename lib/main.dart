import 'package:flutter/material.dart';
import 'package:flutter_app/Tabs.dart';
import 'package:flutter_app/common/router.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉debug
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Tabs(),
      // 命名路由
      onGenerateRoute: router,
      // 初始化加载的路由
      initialRoute: '/',
    );
  }
}
