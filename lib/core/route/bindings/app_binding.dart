import 'package:get/get.dart';
import 'package:service_dashboard_app/features/vendor/legal/presentation/controller/vendor_legal_controller.dart';

class AppBinding extends Bindings {
  @override
  dependencies() {
    // // ================= Customer Home=================
    Get.lazyPut(() => VendorLegalController());
  }
}
