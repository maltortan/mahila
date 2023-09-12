import 'package:admin/models/UserInfo.dart';
import 'package:admin/models/all_users.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<AllUser>> fetchDataFromApi() async {
  final response = await http.get(Uri.parse('http://103.140.1.138:8000/userinfos'));
  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    print(response.body);
    return data.map((json) => AllUser.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load data from the API');
  }
}