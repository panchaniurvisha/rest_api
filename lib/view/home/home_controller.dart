import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/res/constant/app_constant.dart';

import '../../model/user_model.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getUserInformationFromApi();
    super.onInit();
  }

  RxList<UserModel> userModelList = <UserModel>[].obs;
  final Dio dio = Dio();
  getUserInformationFromApi() async {
    try {
      final response = await dio.get(
        "${AppConstant.baseUrl}/users",
      );
      if (response.statusCode == 200) {
        debugPrint(response.data.toString());
        userModelList(userModelFromJson(jsonEncode(response.data)));
      } else if (response.statusCode == 500) {
        debugPrint("Server Not Connect");
      }
    } catch (e) {
      debugPrint("Error while fetching data: $e");
    }
  }
}
