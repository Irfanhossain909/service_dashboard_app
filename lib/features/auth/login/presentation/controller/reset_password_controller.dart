import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final RxString password = ''.obs;
  final RxString confirmPassword = ''.obs;
  final RxBool isLoading = false.obs;

  void onPasswordChanged(String value) {
    password.value = value;
  }

  void onConfirmPasswordChanged(String value) {
    confirmPassword.value = value;
  }

  Future<void> savePassword() async {
    if (password.value.isEmpty || confirmPassword.value.isEmpty) return;
    if (password.value != confirmPassword.value) return;
    isLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 600));
    isLoading.value = false;
  }
}
