import 'package:flutter/material.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.light,

    /// 🎨 Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.lightGreen,
      brightness: Brightness.light,
    ),

    /// 🖼 Scaffold Background
    scaffoldBackgroundColor: AppColors.backgrounColor,

    /// 📌 AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgrounColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.black),
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
