import 'package:get/get.dart';
import 'package:service_dashboard_app/features/vendor/navigation/controller/vendor_navigation_screen_controller.dart';

class NavigationScreenBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut(() => VendorNavigationScreenController());
  }
}
