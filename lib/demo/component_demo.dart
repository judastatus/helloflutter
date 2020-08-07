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
import '../demo/simple_dialog_demo.dart';
import '../demo/alert_dialog_demo.dart';
import '../demo/bottom_sheet_demo.dart';
import '../demo/snack_bar_demo.dart';
import '../demo/expansion_panel_demo.dart';
import '../demo/chip_demo.dart';
import '../demo/data_table_demo.dart';
import '../demo/paingated_data_table_demo.dart';
import '../demo/card_demo.dart';
import '../demo/stepper_demo.dart';

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
          ListItem(title: 'Stepper', page: StepperDemo()),
          ListItem(title: 'card ', page: CardDemo()),
          ListItem(
              title: 'paingated data table', page: PaginatedDataTableDemo()),
          ListItem(title: 'DataTable', page: DataTableDemo()),
          ListItem(title: 'chip', page: ChipDemo()),
          ListItem(
            title: 'ExpansionPanelDemo',
            page: ExpansionPanelDemo(),
          ),
          ListItem(title: 'snack bar', page: SnackBarDemo()),
          ListItem(title: 'bottom sheet', page: BottomSheetDemo()),
          ListItem(title: 'alert dialog', page: AlertDialogDemo()),
          ListItem(title: 'simple dialog', page: SimpleDialogDemo()),
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
