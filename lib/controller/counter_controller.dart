import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  void increase() async {
    counter.value++;
  }

  void decrease() async {
    counter.value--;
  }
}
