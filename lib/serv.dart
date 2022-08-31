import 'dart:convert';
import 'dart:developer';
import 'file.dart';
import 'package:http/http.dart' as http;


Future<Filee?>fetchData() async {
  Filee? result;
  try {
    var response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/albums/1"),);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
 return result = Filee.fromJson(data);
    }
    else {
      print('error');
    }
  } catch (e) {
    log(e.toString());
  }
  return result;

}


