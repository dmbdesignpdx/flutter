import 'package:flutter/material.dart';


class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        'Loading...',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
