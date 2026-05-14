import 'package:get/get.dart';
import 'package:service_dashboard_app/features/vendor/legal/presentation/controller/vendor_legal_controller.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/controller/vendor_order_details_controller.dart';

class AppBinding extends Bindings {
  @override
  dependencies() {
    // // ================= Customer Home=================
    Get.lazyPut(() => VendorLegalController());
    Get.lazyPut(() => VendorOrderDetailsController());
  }
}
