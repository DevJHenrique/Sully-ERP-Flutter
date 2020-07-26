import 'package:flutter/material.dart';

import 'theme.dart';

class CollapsingListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  CollapsingListTile({@required this.title, @required this.icon, this.isSelected = false, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: AnimatedContainer(
        width: 500,
        color: Colors.transparent,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        duration: Duration(milliseconds: 300),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: this.isSelected ? selectedColor : Colors.white30,
              size: 38.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                this.title,
                style: this.isSelected ? listTitleSelectedTextStyle : listTitleTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
