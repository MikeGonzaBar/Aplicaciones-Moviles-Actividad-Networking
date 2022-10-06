import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class RequestProvider with ChangeNotifier {
  List<dynamic> _reqList = [];
  dynamic _resp = {};
  final _usersEndpoint = "https://jsonplaceholder.typicode.com/posts";
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
        'title': '${data.title}',
        'body': '${data.body}',
        'userId': '${data.userId}',
      };
      var response = await http.post(Uri.parse(_usersEndpoint), body: body);
      if (response.statusCode == 200) {
        var content = jsonDecode(response.body);
        _resp = content;
        notifyListeners();
      }
    } catch (e) {
      _resp = {};
      notifyListeners();
    }
  }
}
