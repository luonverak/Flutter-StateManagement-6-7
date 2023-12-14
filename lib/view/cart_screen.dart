import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/product_controller.dart';
import 'package:state_management/widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final ProductController controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All item'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context, index) => cartItem(
            controller.list[index],
          ),
        ),
      ),
    );
  }
}
