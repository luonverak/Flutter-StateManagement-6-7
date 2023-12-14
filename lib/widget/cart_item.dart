import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/product_controller.dart';

import '../model/shoe_model.dart';

Widget cartItem(ShoeModel model) {
  final ProductController controller = Get.put(ProductController());
  return Slidable(
    endActionPane: ActionPane(
      motion: const DrawerMotion(),
      children: [
        SlidableAction(
          borderRadius: BorderRadius.circular(10),
          onPressed: (context) async {
            controller.removeCart(model);
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
        )
      ],
    ),
    child: SizedBox(
      width: double.infinity,
      height: 120,
      child: Card(
        child: Row(
          children: [
            SizedBox(
              width: 130,
              child: Image.asset(model.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Price ${model.price} \$',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Qty ${model.counter}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
