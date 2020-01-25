import 'package:flutter/material.dart';

import '../ui/card.dart';


class CardList {

  static List<Widget> render(List data, bool sort) {
    if (sort) {
      data.sort((a,b) => a['name'].compareTo(b['name']));
    } else {
      data.sort((a,b) => b['name'].compareTo(a['name']));
    }

    return data.map((item) =>
      AppCard(
        title: item['name'],
        terrain: item['terrain'],
        climate: item['climate'],
        population: item['population'],
        key: UniqueKey(),
      )
    ).toList(growable: false);
  }
}
