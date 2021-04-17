import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:my_json_api/model/user.dart';

class WebService {
  var dio = Dio();

  Future<List<Post>> fetchPosts() async {
    try {
      String url = "https://jsonplaceholder.typicode.com/posts";

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return (jsonDecode(response.body) as List)
            .map((post) => Post.fromMap(post))
            .toList();
      }
    } catch (hata) {
      print("Hata: " + hata);
    }
  }
}
