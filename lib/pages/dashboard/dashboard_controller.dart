// package
import 'package:get/get.dart';
// model class
import 'package:getx/pages/dashboard/dashboard_model.dart';

enum MockType { name, cont, like }

class DashboardController extends GetxController {
  final user = User().obs;

  void addLike() {
    user.update((val) {
      val?.like++;
      val?.name = 'pushed';
    });
  }

  void addUser() {
    user.update((val) {
      val?.like = 0;
      val?.name = 'new User';
    });
  }
}
