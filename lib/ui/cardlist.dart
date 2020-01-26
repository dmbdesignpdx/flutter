import 'package:flutter/material.dart';

import '../ui/card.dart';


class CardList {
  const CardList(this.data);

  final List data;
  

  List<Widget> sort(bool sort) {

    if (sort) {
      data.sort((a,b) => a.name.compareTo(b.name));
    } else {
      data.sort((a,b) => b.name.compareTo(a.name));
    }

    return data.map((item) =>
      AppCard(
        title: item.name,
        first: item.first,
        second: item.second,
        third: item.third,
        key: UniqueKey(),
      )
    ).toList(growable: false);
  }
}
