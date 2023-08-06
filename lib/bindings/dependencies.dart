import 'package:get/get.dart';

import '../controller/page_five_controller.dart';
import '../controller/page_four_controller.dart';
import '../controller/page_one_controller.dart';
import '../controller/page_three_controller.dart';
import '../controller/page_two_controller.dart';

class PageOneControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageOneController());
  }
}

class PageTwoControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageTwoController());
  }
}

class PageThreeControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageThreeController());
  }
}

class PageFourControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageFourController());
  }
}

class PageFiveControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageFiveController());
  }
}
