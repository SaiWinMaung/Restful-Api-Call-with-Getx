import 'package:http/http.dart' as http;
import 'package:restfulapicallwithgetx/Model/country.dart';

class ApiService {
  static var client = http.Client();
  static Future<List<Country>> fetchCountry() async {
    var response = await client
        .get(Uri.parse('https://restcountries.com/v3.1/all?fields=name,flags'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return countryFromJson(jsonString);
    } else {
      return throw Exception('Failed to load posts');
    }
  }
}
