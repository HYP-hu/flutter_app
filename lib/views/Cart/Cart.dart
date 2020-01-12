import 'package:flutter/material.dart';
import 'package:flutter_app/code/listData.dart';

class CartDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CartDemoState();
  }
}

class _CartDemoState extends State<CartDemo> {
  List _listDate = listData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _listDate.map((item) {
        return ShowImageWidget(item['imageUrl'], item['title'], item['author']);
      }).toList(),
    );
  }
}

class ShowImageWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String author;
  ShowImageWidget(this.imageUrl, this.title, this.author);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShowImageState(this.imageUrl, this.title, this.author);
  }
}

class ShowImageState extends State<ShowImageWidget> {
  String imageUrl;
  String title;
  String author;
  ShowImageState(this.imageUrl, this.title, this.author);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 20 / 9,
              child: Image.network(
                this.imageUrl,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(this.imageUrl)),
            title: Text(
              this.title,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              this.author,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
