import 'package:flutter/material.dart';

class CategoryDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CategoryDemoState();
  }
}

class CategoryDemoState extends State<CategoryDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 21 / 9,
            child: Image.network(
              'https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
           Container(
                height: 200,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(),
                          child: Image.network(
                              'https://www.itying.com/images/flutter/2.png',
                              fit: BoxFit.cover),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                     Expanded(
                            flex: 1,
                            child: ListView(
                              children: <Widget>[
                                Container(
                                    height: 95,
                                    child: Image.network(
                                        'https://www.itying.com/images/flutter/3.png',
                                        fit: BoxFit.cover)),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 95,
                                    child: Image.network(
                                        'https://www.itying.com/images/flutter/4.png',
                                        fit: BoxFit.cover)),
                              ],
                            )),
                  ],
                ),
              )
        ],
      ),
    );
  }
}
