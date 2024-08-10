import 'package:connectivity_plus/connectivity_plus.dart';

/// Abstract Class for providing network info
/// [isConnected] method is used for testing
abstract class NetworkInfo {
  /// This method tells whether the system is connected with the internet or not
  Future<bool> get isConnected;

  /// This method will initialize connectivity status change listener
  void initListener();
}

/// [NetworkInfoImpl] implementation of [NetworkInfo]
/// Provides info regarding the network info using network info package
class NetworkInfoImp implements NetworkInfo {
 List <ConnectivityResult> _connectionStatus = [ConnectivityResult.none];

  NetworkInfoImp();

  /// This method will initialize connectivity status change listener
  @override
  Future<void> initListener() async {
    var connectivity = Connectivity();
    _connectionStatus = await connectivity.checkConnectivity();
    connectivity.onConnectivityChanged.listen((List<ConnectivityResult> result) {
      _connectionStatus.clear();
      _connectionStatus.addAll(result);
    });
  }

  /// This method provides info regarding network connectivity using InternetConnectionChecker
  /// Output: [bool] tells whether connected to internet or not
  @override
  Future<bool> get isConnected async {
    return (_connectionStatus.contains(ConnectivityResult.mobile) || _connectionStatus.contains(ConnectivityResult.wifi));
  }
}
