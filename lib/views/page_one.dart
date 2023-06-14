import 'package:dependency_test/config/app_routes/routes.dart';
import 'package:dependency_test/controller/page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final pageOneController = Get.find<PageOneController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page One"),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pageOneController.isLoading.value
                  ? "loading..."
                  : pageOneController.data.value),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    pageOneController.fetchData();
                  },
                  child: const Text("Fetch Data")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.pageTwo);
                  },
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
