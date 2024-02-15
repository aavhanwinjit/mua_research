import 'dart:convert';

import 'package:ekyc/core/errors/excaptions.dart';
import 'package:ekyc/core/storage/storage_key.dart';
import 'package:ekyc/core/storage/storage_manager.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppStorageManager)
class StorageManagerImpl implements AppStorageManager {
  final GetStorage box = GetStorage();

  @override
  Future<Map<String, dynamic>?> getMap({required StorageKey key}) async {
    try {
      final data = box.read(key.name);
      final value = Future.value(json.decode(data));
      return data == null ? data : value;
    } catch (e) {
      debugPrint("Error while extracting data from local storage: ${e.toString()}");
      throw CacheException();
    }
  }

  @override
  Future<void> storeMap({
    required StorageKey key,
    required Map<String, dynamic> data,
  }) {
    return box.write(
      key.name,
      jsonEncode(data),
    );
  }

  @override
  Future<void> clearStorage() {
    return box.erase();
  }
}