import 'package:get/get.dart';

class PageFourController extends GetxController {
  final isLoading = false.obs;
  final data = "No data".obs;

  String fetchData() {
    isLoading(true);
    Future.delayed(const Duration(seconds: 2));
    isLoading(false);
    data.value = "Hi The is Page Four Controller";
    return data.value;
  }
}
