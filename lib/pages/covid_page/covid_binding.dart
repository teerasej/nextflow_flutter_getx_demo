import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_demo/covid_stat_provider.dart';

class CovidBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CovidStatProvider>(() => CovidStatProvider());
  }
}
