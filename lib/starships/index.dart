import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/get.dart' show Get;
import '../ui/drawer.dart';
import './body.dart';
import '../ui/loader.dart';
import '../ui/error.dart';
import '../ui/appbar.dart';


// Starship
class Starships extends StatefulWidget {
  @override
  _StarshipsState createState() => _StarshipsState();
}

// Starship State
class _StarshipsState extends State<Starships> {
  static const _title = 'Starships';
  
  // State
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
    
    _starship = Get('https://swapi.co/api/${_title.toLowerCase()}').jsonData;
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
        future: _starship,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return Loader();
          else if (snapshot.hasError) return Err();
          return StarshipBody(
            data: snapshot.data['results'],
            sort: _sort,
          );
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
