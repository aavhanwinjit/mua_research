import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoHelper {
  static Future<String> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    String appName = packageInfo.appName;
    debugPrint("appName: $appName");

    String packageName = packageInfo.packageName;
    debugPrint("packageName: $packageName");

    String buildNumber = packageInfo.buildNumber;
    debugPrint("buildNumber: $buildNumber");

    String version = packageInfo.version;
    debugPrint("version: $version");

    return version;
  }
}
