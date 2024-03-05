import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/storage/storage_key.dart';
import 'package:ekyc/core/storage/storage_manager.dart';

class LocalDataHelper {
  static Future<String> getDeviceToken() async {
    final String? authToken = await getIt<AppStorageManager>().getString(key: StorageKey.AUTH_TOKEN);

    return authToken ?? "";
  }

  static Future<String> getSessionId() async {
    final String? sessionId = await getIt<AppStorageManager>().getString(key: StorageKey.SESSION_ID);

    return sessionId ?? "";
  }

  static Future<void> storeDeviceToken(String? deviceToken) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.DEVICE_TOKEN, data: deviceToken);
  }

  static Future<void> storeAuthToken(String? authToken) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.AUTH_TOKEN, data: authToken);
  }

  static Future<void> storeSessionId(String? sessionId) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.SESSION_ID, data: sessionId);
  }
}
