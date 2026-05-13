import 'package:get_storage/get_storage.dart';
import 'package:service_dashboard_app/core/service/storage/app_storage_key.dart';
import 'package:service_dashboard_app/core/utils/app_logger.dart';

class GetStorageServices {
  GetStorageServices._privateConstructor();
  static final GetStorageServices _instance =
      GetStorageServices._privateConstructor();
  static GetStorageServices get instance => _instance;

  // ////////////// storage initial
  GetStorage box = GetStorage();

  // ////////////////  token
  // Future<void> setToken(String value) async {
  //   try {
  //     await box.write(AppStorageKey.instance.token, value);
  //     await box.save();
  //   } catch (e) {
  //     AppLogger.error("set token $e ");
  //   }
  // }

  // String getToken() {
  //   try {
  //     return box.read(AppStorageKey.instance.token) ?? "";
  //   } catch (e) {
  //     errorLog("get token", e);
  //     return "";
  //   }
  // }

  // //////////////// UID (_id)
  // Future<void> setUID(String value) async {
  //   try {
  //     await box.write("UID", value);
  //     await box.save();
  //   } catch (e) {
  //     errorLog("set UID", e);
  //   }
  // }

  // String getUID() {
  //   try {
  //     return box.read("UID") ?? "";
  //   } catch (e) {
  //     errorLog("get UID", e);
  //     return "";
  //   }
  // }

  ///////////////////////  user role
  Future<void> setRole(String value) async {
    try {
      await box.write(AppStorageKey.instance.userRole, value);
      await box.save();
    } catch (e) {
      AppLogger.error("set fcm token $e ");
    }
  }

  String? getRole() {
    try {
      return box.read(AppStorageKey.instance.userRole);
    } catch (e) {
      AppLogger.error("get fcm token $e ");
      return null;
    }
  }
  // Future<void> setFCMtoken(String value) async {
  //   try {
  //     await box.write("fcmToken", value);
  //     await box.save();
  //   } catch (e) {
  //     errorLog("set fcm token", e);
  //   }
  // }

  // String getFCMtoken() {
  //   try {
  //     return box.read("fcmToken") ?? "";
  //   } catch (e) {
  //     errorLog("get fcm token", e);
  //     return "Fcm Token";
  //   }
  // }

  ///////////////////////  user role
  // Future<void> setSubscription(String value) async {
  //   try {
  //     await box.write("active", value);
  //     await box.save();
  //   } catch (e) {
  //     errorLog("set subscription", e);
  //   }
  // }

  // String getSubscription() {
  //   try {
  //     return box.read("active") ?? "";
  //   } catch (e) {
  //     errorLog("get subscription", e);
  //     return "active";
  //   }
  // }

  // ////////////  get language
  // String? getLanguage() {
  //   return box.read(AppStorageKey.instance.language);
  // }

  // ////////////  set language
  // Future<void> setLanguage(String value) async {
  //   await box.write(AppStorageKey.instance.language, value);
  // }

  // ////////////  get country
  // String getCountry() {
  //   return box.read(AppStorageKey.instance.country) ?? "";
  // }

  // ////////////  set country
  // Future<void> setCountry(String value) async {
  //   await box.write(AppStorageKey.instance.country, value);
  // }

  // ///logout - Clears all locally stored data and navigates to sign in screen

  // Future<void> storageClear() async {
  //   try {
  //     // Clear all stored data
  //     await box.remove(AppStorageKey.instance.token); // Remove token

  //     await box.remove("active"); // Remove token
  //     await box.remove("fcmToken"); // Remove token
  //     await box.remove(AppStorageKey.instance.themeModeDark); // Remove Theme
  //     await box.save();

  //     AppPrint.apiResponse(getFCMtoken(), title: "FCMToken");
  //     AppPrint.apiResponse(getThemeMode(), title: "ThemeMode");
  //     AppPrint.apiResponse(getToken(), title: "Token");
  //     AppPrint.apiResponse(getUID(), title: "UID");

  //     // Note: Navigation is now handled by the calling controller
  //   } catch (e) {
  //     errorLog("storageClear", e);
  //   }
  // }

  // Future<void> completeLogout() async {
  //   try {
  //     await storageClear();

  //     Future.delayed(Duration(seconds: 1), () {
  //       // 🔁 Clear routes
  //       Get.offAllNamed(AppRoutes.instance.authScreen);
  //     });

  //     // 🔥 Reset theme to system
  //     Get.changeThemeMode(ThemeMode.system);
  //   } catch (e) {
  //     errorLog("completeLogout", e);
  //   }
  // }

  // // Future<void> completeLogout() async {
  // //   try {
  // //     await storageClear();

  // //     Get.offAllNamed(AppRoutes.instance.initial);
  // //   } catch (e) {
  // //     errorLog("completeLogout", e);
  // //   }
  // // }

  // /// Set theme mode (true for dark, false for light)
  // Future<void> setThemeMode(bool isDark) async {
  //   try {
  //     await box.write(AppStorageKey.instance.themeModeDark, isDark);
  //     await box.save();
  //   } catch (e) {
  //     errorLog("set theme mode", e);
  //   }
  // }

  // /// Get theme mode (returns null if not set, true for dark, false for light)
  // bool? getThemeMode() {
  //   try {
  //     return box.read(AppStorageKey.instance.themeModeDark);
  //   } catch (e) {
  //     errorLog("get theme mode", e);
  //     return null;
  //   }
  // }

  // Future<void> isUserFirstTime(bool isFirst) async {
  //   try {
  //     await box.write(AppStorageKey.instance.isFirstTime, isFirst);
  //     await box.save();
  //   } catch (e) {
  //     errorLog("set is user first time", e);
  //   }
  // }

  // bool? getIsUserFirstTime() {
  //   try {
  //     return box.read(AppStorageKey.instance.isFirstTime);
  //   } catch (e) {
  //     errorLog("get is user first time", e);
  //     return null;
  //   }
  // }
}
