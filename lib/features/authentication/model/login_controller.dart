import 'package:ecomorce/features/authentication/screen/screen_signup/signup.dart';

import 'package:get/get.dart';

class LoginController {
  static LoginController get instance => Get.find();

  //update current index and jump to last page
  void createAccount() {
    Get.offAll(const Signup());
  }
}
