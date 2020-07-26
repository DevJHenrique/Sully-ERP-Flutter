import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sully/app/modules/start/start_controller.dart';

import 'collapsing_list_tile.dart';
import 'navigation_itens.dart';
import 'theme.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  CollapsingNavigationDrawerState createState() {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer> {
  StartController controller = Modular.get();
  bool isCollapsed = false;
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return getWidget(context, widget);
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        color: drawerBackgroundColor,
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            CollapsingListTile(
              title: ' SULLY',
              icon: Icons.person,
            ),
            Divider(
              color: Colors.grey,
              height: 40.0,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 12.0);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        currentSelectedIndex = counter;
                      });
                    },
                    isSelected: currentSelectedIndex == counter,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                controller.selectcollapseMenu();
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },
              child: CollapsingListTile(
                title: '',
                icon: Icons.menu,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
