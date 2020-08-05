import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "zhangsan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("zhangsan@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://resources.ninghao.org/images/wanghao.jpg"),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        "https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400], BlendMode.hardLight))),
          ),
          ListTile(
            title: Text(
              "message",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            subtitle: Text(
              "three hours ago",
              textAlign: TextAlign.right,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "favorite",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            subtitle: Text(
              "a pencil",
              textAlign: TextAlign.right,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "setting",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            subtitle: Text(
              "person info",
              textAlign: TextAlign.right,
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
