import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepageapi.dart';
import 'apimodel.dart';
import 'favorite.dart';
  class cartmodel with ChangeNotifier {
    homeapi? data;
    String ? token;
    Future<dynamic> getAllData() async {
      Dio dio = Dio();
      dio.options.headers = {
        "lang": "ar",
        "Content-Type": "application/json",
        "Authorization": token,
      };
      final response = await dio.get("https://student.valuxapps.com/api/home?");
      data = homeapi.fromJson(response.data);
      notifyListeners();
    }


    CategoryModel? category;


    Future<dynamic> getAllCategory() async {
      Dio dio = Dio();
      dio.options.headers = {
        "lang": "en",
        "Authorization": token,
      };
      final response =
      await dio.get("https://student.valuxapps.com/api/categories");
      category = CategoryModel.fromJson(response.data);
      print("ddd"+response.data["data"]);
      notifyListeners();
    }



  }

