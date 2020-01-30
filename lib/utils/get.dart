import 'dart:convert';
import 'package:http/http.dart' as http;


class Get {
  const Get(this.url);
  
  final String url;

  Future<Map> get jsonData async {
    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    
    return null;
  }
}


class GetPlanets {
  const GetPlanets({
    this.name,
    this.first,
    this.second,
    this.third,
  });

  final String name;
  final Map<String, dynamic> first;
  final Map<String, dynamic> second;
  final Map<String, dynamic> third;

  factory GetPlanets.fromJSON(Map<String, dynamic> json) {
    return GetPlanets(
      name: json['name'],
      first: { 'name': 'Terrain', 'data': json['terrain'] },
      second: { 'name': 'Climate', 'data': json['climate'] },
      third: { 'name': 'Population', 'data': json['population'] },
    );
  }
}


class GetPeople {
  const GetPeople({
    this.name,
    this.first,
    this.second,
    this.third,
  });

  final String name;
  final Map<String, dynamic> first;
  final Map<String, dynamic> second;
  final Map<String, dynamic> third;

  factory GetPeople.fromJSON(Map<String, dynamic> json) {
    return GetPeople(
      name: json['name'],
      first: { 'name': 'Birth Year', 'data': json['birth_year'] },
      second: { 'name': 'Height', 'data': json['height'] },
      third: { 'name': 'Eye Color', 'data': json['eye_color'] },
    );
  }
}


class GetStarships {
  const GetStarships({
    this.name,
    this.first,
    this.second,
    this.third,
  });

  final String name;
  final Map<String, dynamic> first;
  final Map<String, dynamic> second;
  final Map<String, dynamic> third;

  factory GetStarships.fromJSON(Map<String, dynamic> json) {
    return GetStarships(
      name: json['name'],
      first: { 'name': 'Model', 'data': json['model'] },
      second: { 'name': 'Manufacturer', 'data': json['manufacturer'] },
      third: { 'name': 'Class', 'data': json['starship_class'] },
    );
  }
}


class GetVehicles {
  const GetVehicles({
    this.name,
    this.first,
    this.second,
    this.third,
  });

  final String name;
  final Map<String, dynamic> first;
  final Map<String, dynamic> second;
  final Map<String, dynamic> third;

  factory GetVehicles.fromJSON(Map<String, dynamic> json) {
    return GetVehicles(
      name: json['name'],
      first: { 'name': 'Model', 'data': json['model'] },
      second: { 'name': 'Manufacturer', 'data': json['manufacturer'] },
      third: { 'name': 'Class', 'data': json['vehicle_class'] },
    );
  }
}


class GetSpecies {
  const GetSpecies({
    this.name,
    this.first,
    this.second,
    this.third,
  });

  final String name;
  final Map<String, dynamic> first;
  final Map<String, dynamic> second;
  final Map<String, dynamic> third;

  factory GetSpecies.fromJSON(Map<String, dynamic> json) {
    return GetSpecies(
      name: json['name'],
      first: { 'name': 'Classification', 'data': json['classification'] },
      second: { 'name': 'Designation', 'data': json['designation'] },
      third: { 'name': 'Language', 'data': json['language'] },
    );
  }
}
