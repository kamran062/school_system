import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/application_data_model.dart';

class ApiController {

  Future<ApplicationModel> getApiData() async {
    const apiUrl =
        'http://3.128.210.224:3005/api/test/getApplications';
    late ApplicationModel dataModel;
    try {
      http.Response response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        Map<String, dynamic> jsonMap = jsonDecode(jsonString);
        dataModel = ApplicationModel.fromJson(jsonMap);
        dataModel;
      }
    } on Exception {
      debugPrint("Failed to load data");
    }
    return dataModel;
  }

}