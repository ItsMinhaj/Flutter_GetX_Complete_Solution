import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../model/data_list_model.dart';
import '../model/post_model.dart';

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
  static final dataList3 = <PostModel>[];
  static Future<List<PostModel>> fetchData3() async {
    final response = await http.get(Uri.parse(postUrl));
    final data = jsonDecode(response.body);
    for (Map<String, dynamic> i in data) {
      dataList3.add(PostModel.fromJson(i));
    }
    print(dataList3);
    return dataList3;
  }

// Approach 4 ---> Dartz , Getx
// Used QuikcType Model
  //static final dataList4 = <DataListModel>[];
  static Future<Either<String, List<PostModel>>> fetchData4() async {
    final response = await http.get(Uri.parse(postUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      final postData = data.map((e) => PostModel.fromJson(e)).toList();

      return right(postData);
    } else {
      return left("Failed to fetch post data");
    }
  }

  // Approach - 5
  // Dio - Dartz - Getx
  // In Dio JsonDecode is prohibited to use
  static final dio = Dio();
  static Future<Either<String, List<PostModel>>> fetchData5() async {
    try {
      final response = await dio.get(postUrl);
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        final postData = data.map((e) => PostModel.fromJson(e)).toList();

        return Right(postData);
      } else {
        return const Left("Failed to fetch post data");
      }
    } on DioException catch (e) {
      if (e.response != null) {
        final statusCode = e.response!.statusCode;
        final errorMessage = 'Error $statusCode';
        return Left(errorMessage);
      } else {
        // Error occurred before the request was completed
        const errorMessage = 'No Internet';
        // Return the error message as Left
        return const Left(errorMessage);
      }
    } catch (e) {
      // Handle other types of errors
      final errorMessage = 'Error: $e';

      // Return the error message as Left
      return Left(errorMessage);
    }
  }
}

// There is no difference between QuickType Model and data class generator model.
// Both works same way, there is no differences.
