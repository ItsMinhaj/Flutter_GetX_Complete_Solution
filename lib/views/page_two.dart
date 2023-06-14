import 'package:dependency_test/controller/page_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_routes/routes.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final pageTwoController = Get.find<PageTwoController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page two"),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pageTwoController.isLoading.value
                  ? "loading..."
                  : pageTwoController.data.value),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    pageTwoController.fetchData();
                  },
                  child: const Text("Fetch Data")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.pageThree);
                  },
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
