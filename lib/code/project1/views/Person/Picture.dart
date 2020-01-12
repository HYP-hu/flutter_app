import 'package:flutter/material.dart';
import 'package:flutter_app/code/listData.dart';

class Picture extends StatefulWidget {
  final arguments;
  Picture({this.arguments});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PictureState(arguments: arguments);
  }
}

class _PictureState extends State<Picture> {
  dynamic arguments;
  _PictureState({this.arguments});
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
          title: Text("${this.arguments != null ? arguments : '美丽的图片'}"),
        ),
        body: PictureShow());
  }
}

class PictureShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PictureShowState();
  }
}

class _PictureShowState extends State<PictureShow> {
  List _listData = listData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: _listData.length,
          itemBuilder: ((content, index) {
            return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(_listData[index]['imageUrl']),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _listData[index]['title'],
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(233, 233, 233, 0.8), width: 1)));
          }),
        ));
  }
}
