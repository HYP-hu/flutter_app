import 'package:flutter/material.dart';

class RegisterFirst extends StatefulWidget {
  final arguments;
  RegisterFirst({this.arguments});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterFirstState(arguments: arguments);
  }
}

class _RegisterFirstState extends State<RegisterFirst> {
  dynamic arguments;
  _RegisterFirstState({this.arguments});
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
          title: Text("注册第一步"),
        ),
        body: RegisterFirstShow(
          arguments: arguments,
        ));
  }
}

class RegisterFirstShow extends StatefulWidget {
  final arguments;
  RegisterFirstShow({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterFirstShowState(arguments: arguments);
  }
}

class _RegisterFirstShowState extends State<RegisterFirstShow> {
  String arguments;
  _RegisterFirstShowState({this.arguments = '登陆成功!'});
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
//              Navigator.pushNamed(context, '/registersecond', arguments: "注册完成");
              Navigator.of(context)
                  .pushReplacementNamed('/registersecond', arguments: "注册完成");
            });
          },
        )
      ],
    );
  }
}
