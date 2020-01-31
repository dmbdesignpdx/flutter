import 'package:flutter/material.dart';

import '../ui/button.dart';


class Home extends StatelessWidget {
  const Home(this.title);

  final String title;

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          // Header
          Container(
            margin: const EdgeInsets.fromLTRB(18, 45, 18, 45),
            child: Text(
              title,
              style: Theme.of(context).textTheme.display1.copyWith(
                color: Colors.black,
              ),
            ),
          ),

          // Buttons
          AppButton('Characters'),

          AppButton('Planets'),

          AppButton('Species'),

          AppButton('Starships'),

          AppButton('Vehicles'),

        ],
      ),
    ),
    );
  }
}
