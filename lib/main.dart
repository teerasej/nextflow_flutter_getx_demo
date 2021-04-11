import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_demo/count_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nextflow Flutter GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c = Get.put(CountController());

    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Demo"),
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
            Box(),
            Box()
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  CountController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => Text("${c.count}")),
    );
  }
}
