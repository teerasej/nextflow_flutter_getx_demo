import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_demo/covid_stat_provider.dart';
import 'package:nextflow_flutter_getx_demo/models/covid_stat_model.dart';

class CovidStatDashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Get.find<CovidStatProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19 Thailand'),
      ),
      body: FutureBuilder(
        future: provider.getUsers(),
        builder:
            (BuildContext context, AsyncSnapshot<CovidStatModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var statData = snapshot.data;

            return ListView(
              children: [
                ListTile(
                  title: Text('ผู้ติดเชื้อ'),
                  subtitle: Text('${statData.confirmed}'),
                )
              ],
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
