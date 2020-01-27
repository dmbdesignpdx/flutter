import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  const AppButton({
    @required this.name,
    @required this.link,
  });

  final String name;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 9, 18, 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.teal,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Color(0x44000000),
            blurRadius: 3,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '$link');
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
