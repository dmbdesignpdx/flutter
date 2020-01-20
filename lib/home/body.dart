import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/get.dart';
import '../ui/card.dart';


class HomeBody extends StatefulWidget {
  @override
  State createState() => _HomeBody();
}

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
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text('Loading...');
        } else if (snapshot.hasError) {
          return Text('There was an error, try again.');
        }

        List<Widget> list = [];

        snapshot.data['results'].forEach((item) {
          list.add(
            AppCard(
              title: item['name'],
              copy: item['terrain'],
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
