import 'package:get/get.dart';
import 'package:getx_complete_solution/model/post_model.dart';

import '../service/remote_services.dart';

class PageThreeController extends GetxController {
  final isLoading = false.obs;
  final data = "No data".obs;
  final dataList3 = <PostModel>[].obs;

  Future<List<PostModel>> fetchData3() async {
    final data = await RemoteServices.fetchData3();
    if (data.isNotEmpty) {
      dataList3.value = data;
      return dataList3;
    } else {
      return data;
    }
  }

  // String fetchData() {
  //   isLoading(true);
  //   Future.delayed(const Duration(seconds: 2));
  //   isLoading(false);
  //   data.value = "Hi The is Page Three Controller";
  //   return data.value;
  // }
}
