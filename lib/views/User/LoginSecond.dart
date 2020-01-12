import 'package:flutter/material.dart';
import 'package:flutter_app/Tabs.dart';

class LoginSecond extends StatefulWidget {
  final arguments;
  LoginSecond({this.arguments});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginSecondState(arguments: arguments);
  }
}

class _LoginSecondState extends State<LoginSecond> {
  dynamic arguments;
  _LoginSecondState({this.arguments});
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
          title: Text("登陆成功界面"),
        ),
        body: LoginSecondShow(
          arguments: arguments,
        ));
  }
}

class LoginSecondShow extends StatefulWidget {
  final arguments;
  LoginSecondShow({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginSecondShowState(arguments: arguments);
  }
}

class _LoginSecondShowState extends State<LoginSecondShow> {
  String arguments;
  _LoginSecondShowState({this.arguments = '登陆成功!'});
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
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Tabs(index: 3)),
                  (route) => route == null);
            });
          },
        )
      ],
    );
  }
}
