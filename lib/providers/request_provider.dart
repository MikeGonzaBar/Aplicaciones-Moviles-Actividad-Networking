import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

class RequestProvider with ChangeNotifier {
  List<dynamic> _reqList = [
    {
      "userId": 1,
      "id": 1,
      "title":
          "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body":
          "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
  ];

  final _usersEndpoint = "https://jsonplaceholder.typicode.com/posts";

  String responseBodyToShow = "Response body del request";
  List<dynamic> get getReqList => _reqList;

  Future<dynamic> getReqs() async {
    try {
      var response = await http.get(Uri.parse(_usersEndpoint));
      if (response.statusCode == 200) {
        var content = jsonDecode(response.body);
        _reqList = content;
        notifyListeners();
      }
    } catch (e) {
      _reqList = [];
      notifyListeners();
    }
  }

  Future<dynamic> postToAPI(dynamic data) async {
    try {
      Map<String, String> body = {
        'title': data["title"],
        'body': data["body"],
        'userId': data["userId"],
      };

      var response = await http.post(Uri.parse(_usersEndpoint), body: body);
      dynamic content;
      if (response.statusCode == 201) {
        content = response.body.toString();
      } else {
        content = "Bad request";
      }
      responseBodyToShow = content;
    } catch (e) {
      responseBodyToShow = "Error";
    } finally {
      notifyListeners();
    }
  }
}
