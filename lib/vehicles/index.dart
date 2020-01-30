import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/get.dart' show Get;
import '../ui/drawer.dart';
import './body.dart';
import '../ui/loader.dart';
import '../ui/error.dart';
import '../ui/appbar.dart';


// Vehicles
class Vehicles extends StatefulWidget {
  @override
  _VehiclesState createState() => _VehiclesState();
}

// Vehicles State
class _VehiclesState extends State<Vehicles> {
  static const String _title = 'Vehicles';
  Future<Map> _vehicles;
  bool _sort = true;

  void _setSort() {
    setState(() {
      _sort = !_sort;
    });
  }

  @override
  void initState() {
    super.initState();
    
    _vehicles = Get('https://swapi.co/api/${_title.toLowerCase()}').jsonData;
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
        future: _vehicles,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return Loader();
          else if (snapshot.hasError) return Err();
          return VehiclesBody(
            data: snapshot.data['results'],
            sort: _sort,
          );
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
