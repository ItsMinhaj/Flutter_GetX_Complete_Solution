import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_routes/routes.dart';
import '../controller/page_five_controller.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    final pageFiveController = Get.put(PageFiveController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Five"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: pageFiveController.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(pageFiveController.data[index].title),
                  );
                },
              );
            }),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () async {
                      await pageFiveController.fetchData();
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
        ],
      ),
    );
  }
}
