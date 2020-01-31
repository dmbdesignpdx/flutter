import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  const AppButton(
    this.name,
    {
      this.link = '',
      this.disabled = false,
    }
  );

  final String name;
  final String link;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    final String _link = link != '' ? link : '/${name.toLowerCase()}';

    return Container(
      margin: const EdgeInsets.fromLTRB(18, 9, 18, 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: disabled ? Colors.teal[200] : Colors.teal,
        boxShadow: disabled ? null : <BoxShadow> [
          BoxShadow(
            color: const Color(0x44000033),
            blurRadius: 3,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: FlatButton(
        onPressed: () {
          if (!disabled) Navigator.pushNamed(context, '$_link');
        },
        child: Container(
          padding: const EdgeInsets.all(21),
          child: Text(
            '$name',
            style: Theme.of(context).textTheme.button,
          )
        ),
      ),
    );
  }
}
