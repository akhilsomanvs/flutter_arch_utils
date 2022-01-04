part of flutter_arch_utils;

class AppUtils {
  static String getPlatform() {
    return Platform.isAndroid ? "Android" : "iOS";
  }
}
