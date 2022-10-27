import 'package:connectivity_plus/connectivity_plus.dart';

///
/// This class responsibility is checking device network
/// 
class NetworkConnectivity {

  /// 
  /// Check if network is connected
  /// 
  static Future<bool> get isNetworkConnected async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}