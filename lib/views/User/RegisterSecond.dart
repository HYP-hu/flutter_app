import 'package:flutter/material.dart';

class RegisterSecond extends StatefulWidget {
  final arguments;
  RegisterSecond({this.arguments});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterSecondState(arguments: arguments);
  }
}

class _RegisterSecondState extends State<RegisterSecond> {
  dynamic arguments;
  _RegisterSecondState({this.arguments});
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
          title: Text("注册完成"),
        ),
        body: RegisterSecondShow(
          arguments: arguments,
        ));
  }
}

class RegisterSecondShow extends StatefulWidget {
  final arguments;
  RegisterSecondShow({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterSecondShowState(arguments: arguments);
  }
}

class _RegisterSecondShowState extends State<RegisterSecondShow> {
  String arguments;
  _RegisterSecondShowState({this.arguments = '注册成功!'});
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
              Navigator.of(context).pop();
            });
          },
        )
      ],
    );
  }
}
