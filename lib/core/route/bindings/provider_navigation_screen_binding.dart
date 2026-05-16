import 'package:get/get.dart';
import 'package:service_dashboard_app/features/provider/navigation/controller/provider_navigation_screen_controller.dart';

class ProviderNavigationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProviderNavigationScreenController());
  }
}
