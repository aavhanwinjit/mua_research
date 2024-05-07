import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/storage/storage_key.dart';
import 'package:ekyc/core/storage/storage_manager.dart';

String sessionID = "";

class LocalDataHelper {
  static Future<void> storeDeviceToken(String? deviceToken) async {
    await getIt<AppStorageManager>()
        .storeString(key: StorageKey.DEVICE_TOKEN, data: deviceToken);
  }

  static Future<String> getDeviceToken() async {
    final String? deviceToken = await getIt<AppStorageManager>()
        .getString(key: StorageKey.DEVICE_TOKEN);

    return deviceToken ?? "";
  }

  static Future<void> removeDeviceToken() async {
    return await getIt<AppStorageManager>()
        .removeString(key: StorageKey.DEVICE_TOKEN);
  }

  static Future<void> storeAuthToken(String? authToken) async {
    await getIt<AppStorageManager>()
        .storeString(key: StorageKey.AUTH_TOKEN, data: authToken);
  }

  static Future<String> getAuthToken() async {
    final String? authToken =
        await getIt<AppStorageManager>().getString(key: StorageKey.AUTH_TOKEN);

    return authToken ?? "";
  }

  static Future<void> removeAuthToken() async {
    return await getIt<AppStorageManager>()
        .removeString(key: StorageKey.AUTH_TOKEN);
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

  static Future<void> removeSessionId() async {
    // return await getIt<AppStorageManager>()
    //     .removeString(key: StorageKey.SESSION_ID);
  }

  static Future<void> storeFPToken(String? fpToken) async {
    await getIt<AppStorageManager>()
        .storeString(key: StorageKey.FP_TOKEN, data: fpToken);
  }

  static Future<String> getFPToken() async {
    final String? fpToken =
        await getIt<AppStorageManager>().getString(key: StorageKey.FP_TOKEN);

    return fpToken ?? "";
  }

  static Future<void> removeFPToken() async {
    return await getIt<AppStorageManager>()
        .removeString(key: StorageKey.FP_TOKEN);
  }

  static Future<void> storeMobileNumber(String? mobileNumber) async {
    await getIt<AppStorageManager>()
        .storeString(key: StorageKey.MOBILE_NUMBER, data: mobileNumber);
  }

  static Future<String> getMobileNumber() async {
    final String? mobileNumber = await getIt<AppStorageManager>()
        .getString(key: StorageKey.MOBILE_NUMBER);

    return mobileNumber ?? "";
  }

  static Future<void> removeMobileNumber() async {
    return await getIt<AppStorageManager>()
        .removeString(key: StorageKey.MOBILE_NUMBER);
  }

  static Future<void> storeAgentName(String? agentName) async {
    await getIt<AppStorageManager>()
        .storeString(key: StorageKey.AGENT_NAME, data: agentName);
  }

  static Future<String> getAgentName() async {
    final String? agentName =
        await getIt<AppStorageManager>().getString(key: StorageKey.AGENT_NAME);

    return agentName ?? "";
  }

  static Future<void> removeAgentName() async {
    return await getIt<AppStorageManager>()
        .removeString(key: StorageKey.AGENT_NAME);
  }
}
