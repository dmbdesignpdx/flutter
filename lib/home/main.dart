import 'package:flutter/material.dart';
import 'dart:async';

import '../ui/drawer.dart';
import '../utils/get.dart';
import 'body.dart';
import '../ui/loader.dart';
import '../ui/error.dart';


// Home
class Home extends StatefulWidget {
  const Home({
    @required this.title,
    @required Key key,
  });

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

// Home State
class _HomeState extends State<Home> {
  Future<Map> _planets;
  bool _sort = true;

  void _setSort() {
    setState(() {
      _sort = !_sort;
    });
  }

  @override
  void initState() {
    super.initState();
    
    _planets = Get('https://swapi.co/api/planets').jsonData;
  }

  @override
  Scaffold build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[100],
    appBar: AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.grey[100],
      leading: Builder(
        builder: (BuildContext context) =>
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            enableFeedback: true,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
      ),
      title: Text(
        widget.title,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Colors.black,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.sort_by_alpha),
          color: Colors.black,
          enableFeedback: true,
          onPressed: () {
            _setSort();
          },
        ),
      ],
    ),
    body: FutureBuilder(
      future: _planets,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) return Loader();
        else if (snapshot.hasError) return Err();
        return HomeBody(
          data: snapshot.data['results'],
          sort: _sort,
          key: UniqueKey(),
        );
      },
    ),
    drawer: AppDrawer('Planets'),
  );
}
