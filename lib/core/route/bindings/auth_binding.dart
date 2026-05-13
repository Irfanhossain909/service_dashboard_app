import 'package:get/get.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/controller/forget_password_controller.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/controller/login_controller.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/controller/reset_password_controller.dart';

class AuthBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => ForgetPasswordController());
    Get.lazyPut(() => ResetPasswordController());
  }
}
