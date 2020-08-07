import 'package:flutter/material.dart';
import 'package:helloflutter/demo/check_box_demo.dart';
import 'package:helloflutter/demo/form_demo.dart';
import 'package:helloflutter/demo/radio_demo.dart';
import 'package:helloflutter/demo/slider_demo.dart';
import 'package:helloflutter/demo/switch_demo.dart';
import '../demo/floating_action_buttom_demo.dart';
import '../demo/button_demo.dart';
import '../demo/pop_menu_button_demo.dart';
import '../demo/datetime_demo.dart';

class ComponentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("component demo"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'Date & Time', page: DateTimeDemo()),
          ListItem(
            title: "slider Demo",
            page: SliderDemo(),
          ),
          ListItem(
            title: "switch Demo",
            page: SwitchDemo(),
          ),
          ListItem(
            title: "radio Demo",
            page: RadioDemo(),
          ),
          ListItem(
            title: "Checkbox Demo",
            page: CheckboxDemo(),
          ),
          ListItem(
            title: "From",
            page: FormDemo(),
          ),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
