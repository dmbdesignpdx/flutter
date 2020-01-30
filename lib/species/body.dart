import 'package:flutter/material.dart';

import '../utils/get.dart' show GetSpecies;
import '../ui/cardlist.dart';


// SpeciesBody
class SpeciesBody extends StatelessWidget {
  const SpeciesBody({
    @required this.data,
    this.sort = true,
  });

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _species = data
      .map((item) => GetSpecies.fromJSON(item))
      .toList(growable: false);    

    return SafeArea(
      child: ListView(
        children: <Widget>[
          ...sortCards(_species, sort),
          SizedBox(height: 18,),
        ],
      ),
    );
  }
}
