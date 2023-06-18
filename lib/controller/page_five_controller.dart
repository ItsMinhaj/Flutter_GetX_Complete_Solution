import 'package:dependency_test/widgets/error_show_dialog.dart';
import 'package:get/get.dart';

import '../model/post_model.dart';
import '../service/remote_services.dart';

class PageFiveController extends GetxController {
  final isLoading = false.obs;
  final data = <PostModel>[].obs;

  Future<void> fetchData() async {
    isLoading(true);
    final result = await RemoteServices.fetchData5();
    isLoading(false);
    result.fold((error) async => await errorShowDialog(error), (dataListModel) {
      data.value = dataListModel;
    });
  }
}
