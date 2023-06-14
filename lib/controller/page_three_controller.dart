import 'package:get/get.dart';

class PageThreeController extends GetxController {
  final isLoading = false.obs;
  final data = "No data".obs;

  String fetchData() {
    isLoading(true);
    Future.delayed(const Duration(seconds: 2));
    isLoading(false);
    data.value = "Hi The is Page Three Controller";
    return data.value;
  }
}
