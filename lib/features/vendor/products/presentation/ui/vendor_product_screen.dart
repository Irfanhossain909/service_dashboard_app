import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/vendor/products/presentation/widget/product_screen_table.dart';

class VendorProductScreen extends StatelessWidget {
  const VendorProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Products", showLeading: false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12.h,
          children: [
            AppButton(
              height: 44.h,
              title: "+ Add Product",
              onTap: () {
                Get.toNamed(AppRoutes.instance.vendorAddProductScreen);
              },
            ),
            ProductScreenTable(
              items: [
                ProductTableItemModel(
                  name: "Product 1",
                  price: "100",
                  stock: "10",
                ),
                ProductTableItemModel(
                  name: "Product 2",
                  price: "200",
                  stock: "20",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
