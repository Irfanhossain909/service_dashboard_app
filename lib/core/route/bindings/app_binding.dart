import 'package:get/get.dart';
import 'package:service_dashboard_app/features/provider/legal/presentation/controller/provider_legal_controller.dart';
import 'package:service_dashboard_app/features/provider/service/presentation/controller/provider_order_details_controller.dart';
import 'package:service_dashboard_app/features/vendor/delivery/presentation/controller/vendor_delivery_management_controller.dart';
import 'package:service_dashboard_app/features/vendor/legal/presentation/controller/vendor_legal_controller.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/controller/vendor_order_details_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // // ================= Customer Home=================
    Get.lazyPut(() => VendorLegalController());
    Get.lazyPut(() => VendorOrderDetailsController());
    Get.lazyPut(() => VendorDeliveryManagementController());
    Get.lazyPut(() => ProviderLegalController());
    Get.lazyPut(() => ProviderOrderDetailsController());
  }
}
