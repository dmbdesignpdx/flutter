import 'package:flutter/material.dart';


class NavItem extends StatelessWidget {
  const NavItem({
    @required this.label,
    @required this.link,
    @required this.icon,
    this.disabled = false,
  });

  final String label;
  final String link;
  final IconData icon;
  final bool disabled;
  
  @override
  Widget build(BuildContext context) {
    final String _current = ModalRoute.of(context).settings.name;
    final Color _teal = Colors.teal;
    final Color _grey = Colors.grey[700];
    
    return Opacity(
      opacity: disabled ? 0.5 : 1,
      child: ListTile(
        onTap: () {
          if (!disabled) Navigator.pushNamed(context, link);
        },
        leading: Icon(
          icon,
          color: _current == link ? _teal : _grey,
        ),
        title: Text(
          label, 
          style: TextStyle(
            fontSize: 20,
            color: _current == link ? _teal : _grey,
          ),
        ),
      ),
    );
  }
}