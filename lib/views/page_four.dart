import 'package:dependency_test/controller/page_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_routes/routes.dart';
import '../controller/page_four_controller.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    final pageFourController = Get.find<PageFourController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Three"),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pageFourController.isLoading.value
                  ? "loading..."
                  : pageFourController.data.value),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    pageFourController.fetchData();
                  },
                  child: const Text("Fetch Data")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.pageFive);
                  },
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
