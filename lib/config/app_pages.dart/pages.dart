import 'package:dependency_test/bindings/dependencies.dart';
import 'package:dependency_test/config/app_routes/routes.dart';
import 'package:dependency_test/views/page_five.dart';
import 'package:dependency_test/views/page_four.dart';
import 'package:dependency_test/views/page_one.dart';
import 'package:dependency_test/views/page_three.dart';
import 'package:dependency_test/views/page_two.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static const initail = '/pageOne/';

  static final routes = [
    GetPage(
      name: initail,
      page: () => const PageOne(),
      binding: PageOneControllerBindings(),
    ),
    GetPage(
      name: Routes.pageTwo,
      page: () => const PageTwo(),
      binding: PageTwoControllerBindings(),
    ),
    GetPage(
      name: Routes.pageThree,
      page: () => const PageThree(),
      binding: PageThreeControllerBindings(),
    ),
    GetPage(
      name: Routes.pageFour,
      page: () => const PageFour(),
      binding: PageFourControllerBindings(),
    ),
    GetPage(
      name: Routes.pageFive,
      page: () => const PageFive(),
      binding: PageFiveControllerBindings(),
    ),
  ];
}
