import 'package:flutter/material.dart';


class NavItem extends StatelessWidget {
  const NavItem({
    @required this.label,
    @required this.icon,
    this.link = '',
    this.disabled = false,
  });

  final String label;
  final String link;
  final IconData icon;
  final bool disabled;
  
  @override
  Widget build(BuildContext context) {
    final String _link = link != '' ? link : '/${label.toLowerCase()}';
    final String _current = ModalRoute.of(context).settings.name;
    final Color _grey = Colors.grey[700];
    const Color _teal = Colors.teal;

    return Opacity(
      opacity: disabled ? 0.5 : 1,
      child: ListTile(
        onTap: () {
          if (!disabled) Navigator.pushNamed(context, _link);
        },
        leading: Icon(
          icon,
          color: _current == _link ? _teal : _grey,
        ),
        title: Text(
          label, 
          style: TextStyle(
            fontSize: 20,
            color: _current == _link ? _teal : _grey,
          ),
        ),
      ),
    );
  }
}
