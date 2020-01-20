import 'package:flutter/material.dart';

import '../utils/animation.dart';


// Card
class AppCard extends StatefulWidget {
  const AppCard({
    @required Key key,
    @required this.title,
    @required this.copy,
  }) : super(key: key);

  final String title;
  final String copy;

  @override
  State createState() => _AppCardState();
}

// Card State
class _AppCardState extends State<AppCard> {
  // State
  bool _initial = true;

  @override
  Widget build(BuildContext context) => GestureDetector(
    // Actions
    onTap: () {
      setState(() {
        _initial = !_initial;
      });
    },

    // Style
    child: AnimatedContainer(
      duration: AppAnimate.duration,
      curve: AppAnimate.curve,
      height: _initial ? 100 : 200,
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 0),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: _initial ? Colors.grey[50] : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0x22000033),
            offset: _initial ? const Offset(0, 2) : const Offset(0, 6),
            blurRadius: _initial ? 3 : 9,
          ),
        ],
      ),

      // Child
      child: Column(
        children: <Widget>[

          // Title
          AnimatedContainer(
            duration: AppAnimate.duration,
            curve: AppAnimate.curve,
            alignment: _initial ? Alignment.center : Alignment.centerLeft,
            child: Container(
              child: Text(
                '${widget.title}',
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),

          // Terrain
          AnimatedOpacity(
            opacity: _initial ? 0 : 1,
            duration: AppAnimate.duration,
            curve: AppAnimate.curve,
            child: AnimatedContainer(
              duration: AppAnimate.duration,
              curve: AppAnimate.curve,
              height: _initial ? 0 : 60,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Terrain: ${widget.copy}',
                style: Theme.of(context).textTheme.body1,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
