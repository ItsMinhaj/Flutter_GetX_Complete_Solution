import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/app_pages.dart/pages.dart';
import 'views/page_one.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Complete Solution',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute: AppPages.initail,
      home: const PageOne(),
      getPages: AppPages.routes,
    );
  }
}
