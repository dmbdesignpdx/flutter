import 'package:flutter/material.dart';


class Err extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
    child: Text(
      'There was an error, try again.',
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
      ),
    ),
  );
}
