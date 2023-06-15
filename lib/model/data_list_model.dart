// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class DataListModel extends Equatable {
  final int userId;
  final int id;
  final String title;
  final String body;
  const DataListModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  DataListModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return DataListModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory DataListModel.fromMap(Map<String, dynamic> map) {
    return DataListModel(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataListModel.fromJson(String source) =>
      DataListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [userId, id, title, body];
}
