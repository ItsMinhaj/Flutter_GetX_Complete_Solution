import 'package:get/get.dart';
import 'package:getx_complete_solution/model/post_model.dart';

import '../service/remote_services.dart';

class PageFourController extends GetxController {
  final isLoading = false.obs;
  final data = <PostModel>[].obs;

  Future<void> fetchData() async {
    isLoading(true);
    final result = await RemoteServices.fetchData4();
    isLoading(false);
    result.fold((error) => Get.snackbar("Error", error), (postModel) {
      data.value = postModel;
      print(data);
    });
  }
}
