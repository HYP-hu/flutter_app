import 'package:flutter/material.dart';
import 'package:flutter_app/Tabs.dart';
import 'package:flutter_app/views/Person/Picture.dart';
import 'package:flutter_app/views/User/LoginFirst.dart';
import 'package:flutter_app/views/User/LoginSecond.dart';
import 'package:flutter_app/views/User/RegisterFirst.dart';
import 'package:flutter_app/views/User/RegisterSecond.dart';
import 'package:flutter_app/views/News/News.dart';
import 'package:flutter_app/views/User/User.dart';

// 配置路由
final routes = {
  '/': (context, {argument}) => Tabs(),
  '/picture': (context, {arguments}) => Picture(arguments: arguments),
  '/loginfirst': (context, {arguments}) => LoginFirst(arguments: arguments),
  '/loginsecond': (context, {arguments}) => LoginSecond(arguments: arguments),
  '/registerfirst': (context, {arguments}) =>
      RegisterFirst(arguments: arguments),
  '/registersecond': (context, {arguments}) =>
      RegisterSecond(arguments: arguments),
  '/news': (context) => News(),
  '/user': (context) => User(),
};

// 命名固定写法
dynamic router = (RouteSettings settings) {
// 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
