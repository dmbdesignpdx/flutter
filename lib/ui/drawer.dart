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
            margin: EdgeInsets.zero,
            curve: AppAnimate.curve,
            duration: AppAnimate.duration,
            child: Text(
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
            link: '/people',
            icon: Icons.people_outline,
          ),
          
          NavItem(
            label: 'Planets',
            link: '/planets',
            icon: Icons.public,
          ),

          NavItem(
            label: 'Species',
            link: '/species',
            icon: Icons.android,
          ),
          
          NavItem(
            label: 'Starships',
            link: '/starships',
            icon: Icons.airplanemode_active,
          ),
          
          NavItem(
            label: 'Vehicles',
            link: '/vehicles',
            icon: Icons.train,
          ),

          NavItem(
            label: 'About',
            link: '/about',
            icon: Icons.comment,
          ),

        ],
      ),
    );
  }
}
