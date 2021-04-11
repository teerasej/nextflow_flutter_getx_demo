import 'package:get/state_manager.dart';

class CountController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
