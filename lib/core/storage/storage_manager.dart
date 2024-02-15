import 'package:ekyc/core/storage/storage_key.dart';

abstract class AppStorageManager {
  Future<Map<String, dynamic>?> getMap({required StorageKey key});

  Future<void> storeMap({
    required StorageKey key,
    required Map<String, dynamic> data,
  });

  Future<void> clearStorage();
}