import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';

List<DropdownItemModel> mapToDropdownItems(Map<String, String> map) {
  return map.entries
      .map((e) => DropdownItemModel(key: e.key, value: e.value))
      .toList();
}
