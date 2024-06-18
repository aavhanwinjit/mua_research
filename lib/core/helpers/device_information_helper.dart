import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:ekyc/core/helpers/package_info_helper.dart';
import 'package:ekyc/models/device_info/device_info_model.dart';
import 'package:injectable/injectable.dart';
import 'package:platform_device_id/platform_device_id.dart';

@lazySingleton
class DeviceInformationHelper {
  Future<DeviceInfoModel> generateDeviceInformation() async {
    final String platform = Platform.isIOS ? "iOS" : "Android";

    final String ipAddress = await getIpAddress();

    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    String model = "";
    String osVersion = "";

    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      model = androidInfo.model;
      osVersion = androidInfo.version.release;
    }

    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      model = iosInfo.utsname.machine;
      osVersion = iosInfo.systemVersion;
    }

    final String? deviceId = await PlatformDeviceId.getDeviceId;

    String version = await PackageInfoHelper.getVersion();

    final DeviceInfoModel deviceInfoRequest = DeviceInfoModel(
      platform: platform,
      osVersion: osVersion,
      model: model,
      deviceId: deviceId ?? "",
      appVersion: version,
      // appVersion: "1.0.0",
      ipAddress: ipAddress,
    );

    return deviceInfoRequest;
  }

  static Future<String> getIpAddress() async {
    for (var interface in await NetworkInterface.list()) {
      for (var address in interface.addresses) {
        if (!address.isLinkLocal) {
          return address.address;
        }
      }
    }

    return '';
  }
}
