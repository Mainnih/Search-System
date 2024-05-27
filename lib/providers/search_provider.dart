import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SearchProvider with ChangeNotifier {
  List<dynamic> _results = [];
  List<dynamic> get results => _results;

  Future<void> searchAddress(String query) async {
    final url =
        'https://geocode.search.hereapi.com/v1/geocode?q=$query&apiKey=YOUR_API_KEY';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      _results = data['items'];
      notifyListeners();
      log(data.toString());
    } else {
      throw Exception('Failed to load search results');
    }
  }
}
