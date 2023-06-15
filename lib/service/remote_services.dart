import 'dart:convert';

import 'package:dependency_test/model/data_list_model.dart';
import 'package:http/http.dart' as http;

const postUrl = "https://jsonplaceholder.typicode.com/posts";

class RemoteServices {
// Approach One --> Future Builder
// Data Fetched successfully
  static final dataList1 = <DataListModel>[];
  static Future<List<DataListModel>> fetchData1() async {
    final response = await http.get(Uri.parse(postUrl));
    final data = jsonDecode(response.body);
    for (Map<String, dynamic> i in data) {
      dataList1.add(DataListModel.fromMap(i));
    }
    print(dataList1);
    return dataList1;
  }

// Approach Two --> FetchData() executed by Pressin button, using ListView.Builder()
// Data fetch but is not showing
// worked after hot reload or using setState()
  static final dataList2 = <DataListModel>[];
  static Future<List<DataListModel>> fetchData2() async {
    final response = await http.get(Uri.parse(postUrl));
    final data = jsonDecode(response.body);
    for (Map<String, dynamic> i in data) {
      dataList2.add(DataListModel.fromMap(i));
    }
    print(dataList2);
    return dataList2;
  }

// Approach 3 --> using getx
  static final dataList3 = <DataListModel>[];
  static Future<List<DataListModel>> fetchData3() async {
    final response = await http.get(Uri.parse(postUrl));
    final data = jsonDecode(response.body);
    for (Map<String, dynamic> i in data) {
      dataList3.add(DataListModel.fromMap(i));
    }
    print(dataList3);
    return dataList3;
  }
}
