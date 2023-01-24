import 'package:get/get.dart';
import 'package:firebase_chat/pages/welcome/controller.dart';
class WelcomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(()=>WelcomeController());
  }
}