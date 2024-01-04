import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class StorageService extends GetxService {
  late final FlutterSecureStorage _storage;

  @override
  void onInit() {
    _storage = const FlutterSecureStorage();
    super.onInit();
  }

  Future<void> write({
    required String key,
    required String value,
  }) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }
}
