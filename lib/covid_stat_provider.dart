import 'package:get/get_connect.dart';
import 'package:nextflow_flutter_getx_demo/models/covid_stat_model.dart';

class CovidStatProvider extends GetConnect {
  @override
  void onInit() {
    // super.onInit();

    httpClient.baseUrl = 'https://covid19.th-stat.com/api';
  }

  Future<CovidStatModel> getUsers() async {
    var response = await get('/open/today');
    var result = covidStatModelFromJson(response.bodyString);
    return result;
  }
}
