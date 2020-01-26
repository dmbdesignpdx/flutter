import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer(this.current);

  final String current;

  @override
  Drawer build(BuildContext context) {
    final Color _teal = Colors.teal;
    final Color _grey = Colors.grey[600];

    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.public,
              color: current == 'Planets' ? _teal : _grey,
            ),
            title: Text(
              'Planets', 
              style: TextStyle(
                fontSize: 18,
                color: current == 'Planets' ? _teal : _grey,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people_outline,
              color: current == 'People' ? _teal : _grey,
            ),
            title: Text(
              'People', 
              style: TextStyle(
                fontSize: 18,
                color: current == 'People' ? _teal : _grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
