import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_routes/routes.dart';
import '../controller/page_three_controller.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final pageThreeController = Get.find<PageThreeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("3 [ ] | Fetch Data | Getx"),
      ),
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: ListView.builder(
                itemCount: pageThreeController.dataList3.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(pageThreeController.dataList3[index].title),
                  );
                },
              ),
            ),
          ),
          Obx(
            () => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(pageThreeController.isLoading.value
                      ? "loading..."
                      : pageThreeController.data.value),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        pageThreeController.fetchData3();
                      },
                      child: const Text("Fetch Data")),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.pageFour);
                      },
                      child: const Text("Next"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
