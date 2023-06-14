import 'package:dependency_test/controller/page_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_routes/routes.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    final pageFiveController = Get.find<PageFiveController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Five"),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pageFiveController.isLoading.value
                  ? "loading..."
                  : pageFiveController.data.value),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    pageFiveController.fetchData();
                  },
                  child: const Text("Fetch Data")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.pageOne);
                  },
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
