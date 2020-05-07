import 'package:flutter/material.dart';
import 'model/post.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 16.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('hello'),
        elevation: 0.1,
      ),
      body: ListView.builder(
        itemBuilder: _listItemBuilder,
        itemCount: posts.length,
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'hello,this is flutter!',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow),
    ));
  }
}
