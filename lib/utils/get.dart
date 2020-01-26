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


class Planets {
  const Planets({
    this.name,
    this.first,
    this.second,
    this.third,
  });

  final String name;
  final Map<String, dynamic> first;
  final Map<String, dynamic> second;
  final Map<String, dynamic> third;

  factory Planets.fromJSON(Map<String, dynamic> json) {
    return Planets(
      name: json['name'],
      first: { 'name': 'Terrain', 'data': json['terrain'] },
      second: { 'name': 'Climate', 'data': json['climate'] },
      third: { 'name': 'Population', 'data': json['population'] },
    );
  }
}


class People {
  const People({
    this.name,
    this.first,
    this.second,
    this.third,
  });

  final String name;
  final Map<String, dynamic> first;
  final Map<String, dynamic> second;
  final Map<String, dynamic> third;

  factory People.fromJSON(Map<String, dynamic> json) {
    return People(
      name: json['name'],
      first: { 'name': 'Birth Year', 'data': json['birth_year'] },
      second: { 'name': 'Height', 'data': json['height'] },
      third: { 'name': 'Eye Color', 'data': json['eye_color'] },
    );
  }
}
