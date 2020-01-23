import 'package:flutter/material.dart';


class FAB extends StatelessWidget {
  final Function increment;

  const FAB(this.increment);

  @override
  FloatingActionButton build(BuildContext context) => FloatingActionButton(
    onPressed: increment,
    tooltip: 'Increment',
    child: Icon(Icons.add),
  );
}
