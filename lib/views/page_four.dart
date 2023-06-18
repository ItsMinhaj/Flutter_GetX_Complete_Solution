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
        title: const Text("4 [ ] | map((e)) | Dartz | Getx "),
      ),
      body: Column(
        children: [
          Obx(
            () {
              return Expanded(
                child: ListView.builder(
                  itemCount: pageFourController.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        pageFourController.data[index].title.toString(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () async {
                    await pageFourController.fetchData();
                  },
                  child: const Text("Fetch Data"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.pageFive);
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
