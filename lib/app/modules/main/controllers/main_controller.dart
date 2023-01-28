import 'package:get/get.dart';

class MainController extends GetxController {
  //TODO: Implement MainController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  BottomMenu _bottomMenu = BottomMenu.home;
  void setMenu(BottomMenu menu) {
    _bottomMenu = menu;
    update();
  }

  BottomMenu get bottomMenu => _bottomMenu;
}
enum BottomMenu { home, university, saved,  profile }
