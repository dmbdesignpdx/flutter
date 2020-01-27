import 'package:flutter/material.dart';

import '../ui/button.dart';


// HomeBody
class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          AppButton(
            name: 'Planets',
            link: '/planets',
          ),
          
          AppButton(
            name: 'Characters',
            link: '/people',
          ),

          AppButton(
            name: 'Starships',
            link: '/starships',
          ),

        ],
      ),
    );
  }
}
