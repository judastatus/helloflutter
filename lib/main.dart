import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:helloflutter/demo/basic_demo.dart';
import 'package:helloflutter/demo/bottom_navigation_bar_demo.dart';
import 'package:helloflutter/demo/component_demo.dart';
import 'package:helloflutter/demo/drawer_demo.dart';
import 'package:helloflutter/demo/form_demo.dart';
import 'package:helloflutter/demo/layout_demo.dart';
import 'package:helloflutter/demo/sliver_demo.dart';
import 'package:helloflutter/demo/view_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
import 'demo/navigator_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/com",
      // home: Home(),
      routes: {
        "/": (context) => Home(),
        '/about': (context) => ListViewDemo(),
        "/form": (context) => FormDemo(),
        "/com": (context) => ComponentDemo()
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
      // accentColor: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: Navigator.defaultRouteName,
          //   onPressed: () => debugPrint('navigation left button is pressed'),
          // ),
          title: Text('Hello'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: Navigator.defaultRouteName,
              onPressed: () =>
                  debugPrint('navigation right button search is pressed'),
            )
          ],
          elevation: 0.1,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_activity),
              ),
              Tab(
                icon: Icon(Icons.change_history),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.view_quilt),
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          ListViewDemo(),
          BasicDemo(),
          LayoutDemo(),
          // ViewDemo(),
          SliverDemo()
        ]),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
