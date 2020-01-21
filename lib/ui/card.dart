import 'package:flutter/material.dart';

import '../utils/animation.dart';


// AppCard
class AppCard extends StatefulWidget {
  final String title;
  final String terrain;
  final String climate;
  final String population;
  
  const AppCard({
    @required Key key,
    @required this.title,
    @required this.terrain,
    @required this.climate,
    @required this.population,
  }) : super(key: key);

  @override
  State createState() => _AppCardState();
}

// AppCard State
class _AppCardState extends State<AppCard> with SingleTickerProviderStateMixin {
  // States
  bool _initial = true;
  bool _showText = false;

  // State Methods
  void _cardExpand() {
    if (_initial) {
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          _showText = true;
        });
      });
    } else {
      setState(() {
        _showText = false;
      });
    }
    
    setState(() {
      _initial = !_initial;
    });
  }

  // Widget
  @override
  Widget build(BuildContext context) => GestureDetector(
    // Actions
    onTap: () {
      _cardExpand();
    },

    // Style
    child: AnimatedContainer(
      duration: AppAnimate.duration,
      curve: AppAnimate.curve,
      height: _initial ? 90 : 260,
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 0),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: _initial ? Colors.grey[100] : Colors.grey[50],
        borderRadius: BorderRadius.circular(6),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0x22000044),
            offset: _initial ? const Offset(0, 0) : const Offset(0, 6),
            blurRadius: _initial ? 0 : 12,
          ),
        ],
      ),

      // Content
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

          // Inner Text
          AnimatedOpacity(
            duration: AppAnimate.duration,
            curve: AppAnimate.curve,
            opacity: !_showText ? 0 : 1,
            child: Container(
              height: !_showText ? 0 : 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  // Terrain
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Terrain: ${widget.terrain}',
                      style: Theme.of(context).textTheme.body1,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  // Climate
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Climate: ${widget.climate}',
                      style: Theme.of(context).textTheme.body1,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  // Climate
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Population: ${widget.population}',
                      style: Theme.of(context).textTheme.body1,
                      textAlign: TextAlign.start,
                    ),
                  ),
                
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
