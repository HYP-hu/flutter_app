import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewsState();
  }
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text('顶部 tab 切换'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(icon: Icon(Icons.directions_boat)),
              Tab(
                icon: Icon(Icons.directions_bus),
              )
            ],
            controller: _tabController,
          )),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text('自行车')),
          Center(
            child: Text('船'),
          ),
          Center(
            child: Text('巴士'),
          ),
        ],
      ),
    );
  }

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener((){
      print(_tabController.index);
      setState(() {

      });
    });
  }
}
