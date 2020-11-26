import 'package:flutter/material.dart';

class DumasAppBar extends StatelessWidget implements PreferredSizeWidget {  
  final Color backgroundColor = Colors.white;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;
  
  DumasAppBar({
    Key key,
    this.title,
    this.appBar,
    this.widgets,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: title,
      backgroundColor: backgroundColor,
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}