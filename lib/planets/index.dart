import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/get.dart' show Get;
import '../ui/drawer.dart';
import './body.dart';
import '../ui/loader.dart';
import '../ui/error.dart';
import '../ui/appbar.dart';


// Planets
class Planets extends StatefulWidget {
  @override
  _PlanetsState createState() => _PlanetsState();
}

// Planets State
class _PlanetsState extends State<Planets> {
  static const _title = 'Planets';

  // State
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
    
    _planets = Get('https://swapi.co/api/${_title.toLowerCase()}').jsonData;
  }

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: NavLead(),
        title: NavTitle(_title),
        actions: <Widget>[
          NavSort(_setSort),
        ],
      ),
      body: FutureBuilder(
        future: _planets,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return Loader();
          else if (snapshot.hasError) return Err();
          return PlanetsBody(
            data: snapshot.data['results'],
            sort: _sort,
          );
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
