import 'package:get/get.dart';
import 'package:state_management/model/shoe_model.dart';

class ProductController extends GetxController {
  RxList<ShoeModel> list = <ShoeModel>[].obs;
  void addCart(ShoeModel model) async {
    list.add(model);
    update();
    Get.snackbar('Success', 'Item add to cart');
  }

  void removeCart(ShoeModel model) async {
    list.remove(model);
    update();
    Get.snackbar('Success', 'Item delete from cart');
  }
}
