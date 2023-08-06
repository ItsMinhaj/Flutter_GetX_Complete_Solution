import 'package:get/get.dart';

import '../model/data_list_model.dart';
import '../service/remote_services.dart';

class PageFourController extends GetxController {
  final isLoading = false.obs;
  final data = <DataListModel>[].obs;

  Future<void> fetchData() async {
    isLoading(true);
    final result = await RemoteServices.fetchData4();
    isLoading(false);
    result.fold((error) => Get.snackbar("Error", error), (dataListModel) {
      data.value = dataListModel;
      print(data);
    });
  }
}
