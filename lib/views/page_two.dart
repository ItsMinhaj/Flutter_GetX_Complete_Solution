import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_routes/routes.dart';
import '../controller/page_two_controller.dart';
import '../service/remote_services.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    final pageTwoController = Get.find<PageTwoController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("2 | Start [ ] | SetState()"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: RemoteServices.dataList2.length,
              itemBuilder: (context, index) {
                final data = RemoteServices.dataList2;
                return ListTile(
                  title: Text(data[index].title),
                );
              },
            ),
          ),
          Obx(
            () => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(pageTwoController.isLoading.value
                      ? "loading..."
                      : pageTwoController.data.value),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () async {
                        await RemoteServices.fetchData2();
                        setState(() {});
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
        ],
      ),
    );
  }
}
