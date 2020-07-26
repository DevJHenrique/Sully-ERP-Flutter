import 'package:flutter/material.dart';

import 'theme.dart';

class CollapsingListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function onTap;
  final double animatedWidth;

  CollapsingListTile(
      {@required this.title, @required this.icon, @required this.animatedWidth, this.isSelected = false, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: AnimatedContainer(
        width: animatedWidth,
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
            (animatedWidth >= 190)
                ? Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      this.title,
                      style: this.isSelected ? listTitleSelectedTextStyle : listTitleTextStyle,
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
