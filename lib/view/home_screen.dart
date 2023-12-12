import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/view/second_screen.dart';

import '../controller/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.trArgs()),
        actions: [
          IconButton(
            onPressed: () {
              Get.updateLocale(const Locale('kh', 'KHR'));
            },
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () {
              Get.snackbar('Hello Babe😘', 'Nik oun ot?');
            },
            icon: const Icon(Icons.notification_important_rounded),
          ),
          IconButton(
            onPressed: () {
              Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              );
            },
            icon: const Icon(Icons.dark_mode),
          ),
          IconButton(
            onPressed: () => Get.to(SecondScreen()),
            icon: const Icon(Icons.arrow_forward),
          )
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.counter.value}',
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () async => controller.increase(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () async => controller.decrease(),
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
