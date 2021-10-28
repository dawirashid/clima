import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.uri);

  final String uri;

  Future getData() async {
    final response = await http.get(
      Uri.parse(uri),
    );
    //
    if (response.statusCode == 200) {
      String data = response.body;
        // print(data);
      return jsonDecode(data);
    } else
      print(response.statusCode);
  }
}
