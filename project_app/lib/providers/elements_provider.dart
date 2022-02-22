import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:project_app/objects/element.dart';

class ElementsProvider extends ChangeNotifier {
  final List<ChemicalElement> _elements = [];

  static final _client = Client();
  static final _apiUrl =
      Uri.parse('https://nm-csproject-api.azurewebsites.net//elements');

  List<ChemicalElement> get elements => [..._elements];

  Future<void> getElements() async {
    Response response = await _client.get(
      _apiUrl,
    );

    List jsonElements = jsonDecode(response.body);

    jsonElements.forEach((element) {
      _elements.add(ChemicalElement.fromJson(element));
    });

    notifyListeners();
  }
}
