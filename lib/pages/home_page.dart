import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get X demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/counter-demo');
                },
                child: Text('Counter'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/covid-19');
                },
                child: Text('Covid-19 Stat'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
