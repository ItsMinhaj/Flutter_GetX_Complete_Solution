import 'package:dependency_test/model/data_list_model.dart';
import 'package:dependency_test/service/remote_services.dart';
import 'package:get/get.dart';

class PageThreeController extends GetxController {
  final isLoading = false.obs;
  final data = "No data".obs;
  final dataList3 = <DataListModel>[].obs;

  Future<List<DataListModel>> fetchData3() async {
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
