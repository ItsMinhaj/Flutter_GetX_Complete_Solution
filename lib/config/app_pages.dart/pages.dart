import 'package:get/get.dart';

import '../../bindings/dependencies.dart';
import '../../views/page_five.dart';
import '../../views/page_four.dart';
import '../../views/page_one.dart';
import '../../views/page_three.dart';
import '../../views/page_two.dart';
import '../app_routes/routes.dart';

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
