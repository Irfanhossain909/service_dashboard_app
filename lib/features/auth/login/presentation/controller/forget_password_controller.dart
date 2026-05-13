import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  final RxString email = ''.obs;
  final RxBool isLoading = false.obs;

  void onEmailChanged(String value) {
    email.value = value.trim();
  }

  Future<void> sendInstructions() async {
    if (email.value.isEmpty) return;
    isLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 600));
    isLoading.value = false;
  }
}
