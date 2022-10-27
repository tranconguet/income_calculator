import 'package:income_calculator/data/core/custom_dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:income_calculator/data/core/exceptions.dart';

///
/// Support store NoSQL data into local database
///
class HiveService {
  HiveService._privateConstructor();

  static HiveService? _instance;

  factory HiveService.getInstance() {
    if (_instance == null) throw NotInitializedException();
    return _instance!;
  }

  static Future<HiveService> init() async {
    await Hive.initFlutter();
    final hiveInstance = HiveService._privateConstructor();
    _instance = hiveInstance;
    return hiveInstance;
  }

  Future<void> setValue(String boxName, String key, value) async {
    final box = await Hive.openLazyBox(boxName);
    await box.put(key, value);
  }

  Future<dynamic> getValue(String boxName, String key) async {
    final box = await Hive.openBox(boxName);
    return await box.get(key);
  }

  ///
  /// Set Api call result into database for case load failed
  /// [url] url of api call
  /// [value] setted value
  ///
  Future<void> setApiValue(String url, Map<String, dynamic> value) async {
    await setValue('api', '$baseUrl/$url', value);
  }

  ///
  /// Get Api call result into database for case load failed
  /// [url] url of api call
  ///
  /// Returns [Map<String, dynamic>] value of latest api call
  ///
  Future<Map<String, dynamic>> getApiValue(String url) async {
    return Map<String, dynamic>.from(await getValue('api', '$baseUrl/$url'));
  }

  ///
  /// Close database after use
  ///
  void closeDatabase() {
    Hive.close();
  }
}
