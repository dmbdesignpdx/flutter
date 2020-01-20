import 'package:flutter/material.dart';


class FAB extends StatelessWidget {
  const FAB(this.increment);

  final Function increment;

  @override
  FloatingActionButton build(BuildContext context) {
    return FloatingActionButton(
      onPressed: increment,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
