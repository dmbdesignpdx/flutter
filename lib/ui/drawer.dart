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

          // Planets
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/planets');
            },
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

          // People
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/people');
            },
            leading: Icon(
              Icons.people_outline,
              color: current == 'People' ? _teal : _grey,
            ),
            title: Text(
              'Characters', 
              style: TextStyle(
                fontSize: 18,
                color: current == 'People' ? _teal : _grey,
              ),
            ),
          ),
          
          // Starships
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/starships');
            },
            leading: Icon(
              Icons.airplanemode_active,
              color: current == 'Starships' ? _teal : _grey,
            ),
            title: Text(
              'Starships', 
              style: TextStyle(
                fontSize: 18,
                color: current == 'Starships' ? _teal : _grey,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
