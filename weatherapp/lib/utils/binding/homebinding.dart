import 'package:get/get.dart';
import 'package:weatherapp/controller/homecontroller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
      city: "zagazig",
    ));

  }

}