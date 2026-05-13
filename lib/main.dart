import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:service_dashboard_app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}
