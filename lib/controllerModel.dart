import 'package:get/state_manager.dart';

class CounterCounter extends GetxController{

  var count = 0.obs;

  void increaseCounter(){
    count.value++;
    update();
  }

}