import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/get.dart' show Get;
import '../ui/drawer.dart';
import './body.dart';
import '../ui/loader.dart';
import '../ui/error.dart';
import '../ui/appbar.dart';


// People
class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

// People State
class _PeopleState extends State<People> {
  static const _title = 'Characters';

  // State
  Future<Map> _people;
  var _sort = true;

  void _setSort() {
    setState(() {
      _sort = !_sort;
    });
  }

  @override
  void initState() {
    super.initState();
    
    _people = Get('https://swapi.co/api/people').jsonData;
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
        future: _people,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return Loader();
          else if (snapshot.hasError) return Err();
          return PeopleBody(
            data: snapshot.data['results'],
            sort: _sort,
          );
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
