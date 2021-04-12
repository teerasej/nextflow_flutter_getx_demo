import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_demo/count_controller.dart';

class CounterNum extends StatelessWidget {
  CountController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => Text("${c.count}")),
    );
  }
}
