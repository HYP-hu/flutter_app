import 'package:flutter/material.dart';

class LoginFirst extends StatefulWidget {
  final arguments;
  LoginFirst({this.arguments});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginFirstState(arguments: arguments);
  }
}

class _LoginFirstState extends State<LoginFirst> {
  dynamic arguments;
  _LoginFirstState({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: CircleAvatar(
            child: Icon(Icons.arrow_back_ios),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        appBar: AppBar(
          title: Text("登陆第一步"),
        ),
        body: LoginFirstShow(
          arguments: arguments,
        ));
  }
}

class LoginFirstShow extends StatefulWidget {
  final arguments;
  LoginFirstShow({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginFirstShowState(arguments: arguments);
  }
}

class _LoginFirstShowState extends State<LoginFirstShow> {
  String arguments;
  _LoginFirstShowState({this.arguments = '登陆第一步'});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('$arguments'),
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, '/loginsecond', arguments: '登陆成功');
            });
          },
        )
      ],
    );
  }
}
