import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mvp/model/api_modle.dart';
import 'package:mvp/service/api_data.dart';

class ProviderPerson extends ChangeNotifier {
  ApiData apiData = ApiData();
  PersonModel? personModel;
  bool isLoading = false;

  fetchPersonData() async {
    isLoading = true;
    notifyListeners();

    try {
      Response response = await apiData.getData();
      if (response.statusCode == 200) {
        personModel = PersonModel.formJson(response.data);
      }
    } catch (e) {
      print("Error: $e");
    }

    isLoading = false;
    notifyListeners();
  }
}
