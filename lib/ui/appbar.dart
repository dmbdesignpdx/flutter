import 'package:flutter/material.dart';


// Leading Button
class NavLead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu),
      color: Colors.black,
      enableFeedback: true,
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}

// Title
class NavTitle extends StatelessWidget {
  const NavTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Colors.black,
        ),
      );
  }
}

// Action: Sort
class NavSort extends StatelessWidget {
  const NavSort(this.setSort);

  final Function setSort;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.sort_by_alpha),
      color: Colors.black,
      enableFeedback: true,
      onPressed: () {
        setSort();
      },
    );
  }
}