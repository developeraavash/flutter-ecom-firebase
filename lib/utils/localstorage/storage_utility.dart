import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final storage = GetStorage();

  // Generic method to save data
  Future<void> saveDate<T>(String key, T value) async {
    await storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    storage.read<T>(key);
    return null;
  }

  //Clear all data
  Future<void> clearAll() async {
    storage.erase();
  }
}
