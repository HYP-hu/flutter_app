import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserState();
  }
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Register(),
    );
  }
}

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  final registerFormKey =
      GlobalKey<FormState>(); // 通过一个引用获取一个StatefulWidget的State对象
  TextEditingController _nameCtrl = new TextEditingController();
  TextEditingController _pwdCtrl = new TextEditingController();

  String username;
  String password;

  void registerForm() {
    print('用户名: ${_nameCtrl.text}');
    print('密码: ${_pwdCtrl.text}');
    registerFormKey.currentState
        .save(); // 通过 registerFormKey.currentState获取它的State对象
    registerFormKey.currentState.validate();
    print(registerFormKey.currentState);
  }

  void initState() {
    super.initState();
    _nameCtrl.addListener(() {
      print(_nameCtrl.text); // 实时监听
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          alignment: Alignment(0, .5),
          width: 300,
          child: Form(
            key: registerFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                    controller: _nameCtrl,
                    decoration: InputDecoration(
//                      border: OutlineInputBorder(), // 输入加边框
                        icon: Icon(Icons.people),
                        hintText: "用户名或手机号"),
                    onSaved: (value) {
                      this.username = value;
                    },
                    validator: (value) => value.isEmpty ? '用户名或手机号不能为空' : null),
                TextFormField(
                  obscureText: true,
                  controller: _pwdCtrl,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: "密码",
                  ),
                  onSaved: (value) {
                    this.password = value;
                  },
                  validator: (value) => value.isEmpty ? '密码不能为空' : null,
                ),
                SizedBox(height: 16.0),
                Container(
                    width: double.infinity,
                    height: 44,
                    child: RaisedButton(
                      color: Colors.lightGreen,
                      child: Text("注 册",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                      onPressed: registerForm,
                    ))
              ],
            ),
          )),
    );
  }
}
