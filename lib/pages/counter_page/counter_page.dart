import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_demo/count_controller.dart';
import 'package:nextflow_flutter_getx_demo/pages/counter_page/counter_num.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c = Get.put(CountController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("${c.count}")),
            ElevatedButton(
                onPressed: () {
                  c.increment();
                },
                child: Text("+")),
            CounterNum(),
            CounterNum()
          ],
        ),
      ),
    );
  }
}
