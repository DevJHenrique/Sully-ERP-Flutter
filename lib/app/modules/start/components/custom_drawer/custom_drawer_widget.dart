import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sully/app/modules/start/start_controller.dart';
import 'package:sully/app/shared/theme.dart';
import 'drawer_itens.dart';
import 'drawer_list_tile.dart';

class CustomDrawerWidget extends StatefulWidget {
  @override
  CustomDrawerWidgetState createState() {
    return new CustomDrawerWidgetState();
  }
}

class CustomDrawerWidgetState extends ModularState<CustomDrawerWidget, StartController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: drawerBackgroundColor,
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 9.0, left: 12.0, top: 9.0, right: 15.0),
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset('assets/sullyLogo.png'),
                ),
              ),
              Text(
                "Sully-ERP",
                style: titleStyle,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerRight, end: Alignment.centerLeft, colors: [selectedColor, Colors.white]),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Observer(builder: (_) {
                  return DrawerListTile(
                    onTap: () => controller.changeSelectedIndex(index),
                    isSelected: controller.currentSelectedIndex == index,
                    title: drawerItems[index].title,
                    icon: drawerItems[index].icon,
                  );
                });
              },
              itemCount: drawerItems.length,
            ),
          ),
          InkWell(
            onTap: controller.changeCollapse,
            child: DrawerListTile(
              title: 'Recolher',
              icon: Icons.menu,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
