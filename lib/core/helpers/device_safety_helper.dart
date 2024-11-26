import 'package:flutter/foundation.dart';
import 'package:safe_device/safe_device.dart';

class DeviceSafetyHelper {
  static Future<bool> detectRootOrJailbreak() async {
    // bool isJailBroken = false;
    bool isJailBroken = await SafeDevice.isJailBroken;
    debugPrint("jailBroken: $isJailBroken");

    bool isRealDevice = await SafeDevice.isRealDevice;
    debugPrint("realDevice: $isRealDevice");

    bool isSafeDevice = await SafeDevice.isSafeDevice;
    debugPrint("isSafeDevice: $isSafeDevice");

    // return true;
    return isSafeDevice;
  }
}
