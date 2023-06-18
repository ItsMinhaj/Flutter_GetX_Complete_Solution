import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> errorShowDialog(String text) async {
  return Get.defaultDialog(
    title: "Error message",
    content: Text(
      text,
      style: const TextStyle(color: Colors.black87),
    ),
    textConfirm: "Ok",
    onConfirm: () => Get.back(),
  );
}
