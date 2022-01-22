import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.startLng, this.startLat, this.endLng, this.endLat});

  final String url =
      'https://api.openrouteservice.org/v2/directions/';
  final String apiKey =
      '5b3ce3597851110001cf6248ee3467c52fdb449e960c94126bce8ab5';
  final String pathParam = 'driving-car'; // Change it if you want
  final double startLng;
  final double startLat;
  final double endLng;
  final double endLat;

  Future getData() async {
    http.Response response = await http.get(
        Uri.parse('$url$pathParam?api_key=$apiKey&start=$startLng,$startLat&end=$endLng,$endLat'));

    if (response.statusCode == 200) {
      String data = response.body;
      // print(response.body);
      return jsonDecode(data);
    } else {
      // print(response.statusCode);
    }
  }
}


