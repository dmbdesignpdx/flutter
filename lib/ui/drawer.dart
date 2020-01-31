import 'package:flutter/material.dart';
import 'package:flutter_app/utils/animation.dart';

import '../ui/navitem.dart';

class AppDrawer extends StatelessWidget {
  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[

          DrawerHeader(
            padding: const EdgeInsets.fromLTRB(18, 45, 60, 0),
            margin: const EdgeInsets.all(0),
            curve: AppAnimate.curve,
            duration: AppAnimate.duration,
            child: const Text(
              'Star Wars Universe',
              style: TextStyle(
                fontFamily: 'Space',
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),

          NavItem(
            label: 'Characters',
            icon: Icons.people_outline,
          ),
          
          NavItem(
            label: 'Planets',
            icon: Icons.public,
          ),

          NavItem(
            label: 'Species',
            icon: Icons.android,
          ),
          
          NavItem(
            label: 'Starships',
            icon: Icons.airplanemode_active,
          ),
          
          NavItem(
            label: 'Vehicles',
            icon: Icons.train,
          ),

          NavItem(
            label: 'About',
            icon: Icons.comment,
          ),

        ],
      ),
    );
  }
}
