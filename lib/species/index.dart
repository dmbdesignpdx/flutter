import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/get.dart' show Get;
import '../ui/drawer.dart';
import './body.dart';
import '../ui/loader.dart';
import '../ui/error.dart';
import '../ui/appbar.dart';


// Species
class Species extends StatefulWidget {
  @override
  _SpeciesState createState() => _SpeciesState();
}

// Species State
class _SpeciesState extends State<Species> {
  static const String _title = 'Species';
  Future<Map> _species;
  bool _sort = true;

  void _setSort() {
    setState(() {
      _sort = !_sort;
    });
  }

  @override
  void initState() {
    super.initState();
    
    _species = Get('https://swapi.co/api/${_title.toLowerCase()}').jsonData;
  }

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        leading: NavLead(),
        title: NavTitle(_title),
        actions: <Widget>[
          NavSort(_setSort),
        ],
      ),
      body: FutureBuilder(
        future: _species,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return Loader();
          else if (snapshot.hasError) return Err();
          return SpeciesBody(
            data: snapshot.data['results'],
            sort: _sort,
          );
        },
      ),
      drawer: AppDrawer(),
    );
  }
}