import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/res/constant/app_string.dart';
import 'package:rest_api/view/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.appTitle),
      ),
      body: controller.userModelList.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) => ListTile(
                onTap: () {},
                title: Text(controller.userModelList[index].name ?? ""),
                subtitle: Text(controller.userModelList[index].email ?? ""),
                leading: Text(controller.userModelList[index].id.toString()),
              ),
              itemCount: controller.userModelList.length,
              padding: const EdgeInsets.all(15),
            ),
    );
  }
}
