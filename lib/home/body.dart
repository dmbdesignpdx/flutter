import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/get.dart';
import '../ui/card.dart';
import '../ui/loader.dart';
import '../ui/error.dart';


// HomeBody
class HomeBody extends StatefulWidget {
  const HomeBody({ @required Key key }) : super(key: key);

  @override
  State createState() => _HomeBody();
}

// HomeBody State
class _HomeBody extends State<HomeBody> {
  Future<Map> planets;

  @override
  void initState() {
    super.initState();
    
    planets = Get('https://swapi.co/api/planets').jsonData; 
  }

  @override
  Widget build(BuildContext context) => SafeArea(
    child: FutureBuilder(
      future: planets,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          // Loader
          return Loader();
        } else if (snapshot.hasError) {
          // Error
          return Err();
        }

        // Planet List
        List<Widget> list = [];

        snapshot.data['results'].forEach((item) {
          list.add(
            AppCard(
              title: item['name'],
              terrain: item['terrain'],
              climate: item['climate'],
              population: item['population'],
              key: UniqueKey(),
            )
          );
        });

        return ListView(
          children: <Widget>[
            ...list,
          ],
        );
      }
    ),
  );
}
