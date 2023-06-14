import 'package:dependency_test/controller/page_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_routes/routes.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final pageThreeController = Get.find<PageThreeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Three"),
      ),
      body: Obx(
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
                    pageThreeController.fetchData();
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
    );
  }
}
