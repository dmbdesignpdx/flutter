import 'package:flutter/material.dart';
import 'dart:async';

import '../ui/drawer.dart';
import '../utils/get.dart';
import './body.dart';
import '../ui/loader.dart';
import '../ui/error.dart';


// Starship
class Starships extends StatefulWidget {
  @override
  _StarshipsState createState() => _StarshipsState();
}

// Starship State
class _StarshipsState extends State<Starships> {
  static const String _title = 'Starships';
  Future<Map> _starship;
  bool _sort = true;

  void _setSort() {
    setState(() {
      _sort = !_sort;
    });
  }

  @override
  void initState() {
    super.initState();
    
    _starship = Get('https://swapi.co/api/starships').jsonData;
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
        _title,
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
      future: _starship,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) return Loader();
        else if (snapshot.hasError) return Err();
        return StarshipBody(
          data: snapshot.data['results'],
          sort: _sort,
          key: UniqueKey(),
        );
      },
    ),
    drawer: AppDrawer('Starship'),
  );
}
