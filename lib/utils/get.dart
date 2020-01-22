import 'dart:convert';
import 'package:http/http.dart' as http;


class Get {
  final String url;

  const Get(this.url);
  
  Future<Map> get jsonData async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    
    return null;
  }
}
