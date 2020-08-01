import 'package:flutter/material.dart';
import 'package:sully/app/shared/theme.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  DrawerListTile({@required this.title, @required this.icon, this.isSelected = false, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        width: 500,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: this.isSelected ? selectedColor : unSelectedColor,
              size: 38.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                this.title,
                style: this.isSelected ? selectedText : unSelectedText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
