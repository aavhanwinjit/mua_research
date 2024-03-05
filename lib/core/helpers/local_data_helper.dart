import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/storage/storage_key.dart';
import 'package:ekyc/core/storage/storage_manager.dart';

String sessionID = "";

class LocalDataHelper {
  static Future<void> storeDeviceToken(String? deviceToken) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.DEVICE_TOKEN, data: deviceToken);
  }

  static Future<String> getDeviceToken() async {
    final String? deviceToken = await getIt<AppStorageManager>().getString(key: StorageKey.DEVICE_TOKEN);

    return deviceToken ?? "";
  }

  static Future<void> storeAuthToken(String? authToken) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.AUTH_TOKEN, data: authToken);
  }

  static Future<String> getAuthToken() async {
    final String? authToken = await getIt<AppStorageManager>().getString(key: StorageKey.AUTH_TOKEN);

    return authToken ?? "";
  }

  static Future<void> storeSessionId(String? sessionId) async {
    // await getIt<AppStorageManager>().storeString(key: StorageKey.SESSION_ID, data: sessionId);
    sessionID = sessionId ?? "";
  }

  static Future<String> getSessionId() async {
    // final String? sessionId = await getIt<AppStorageManager>().getString(key: StorageKey.SESSION_ID);

    // return sessionId ?? "";

    return Future.value(sessionID);
  }

  static Future<void> storeFPToken(String? sessionId) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.FP_TOKEN, data: sessionId);
  }

  static Future<String> getFPToken() async {
    final String? fpToken = await getIt<AppStorageManager>().getString(key: StorageKey.FP_TOKEN);

    return fpToken ?? "";
  }
}
