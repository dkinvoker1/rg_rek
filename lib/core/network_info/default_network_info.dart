import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'network_info.dart';

class DefaultNetworkInfo implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  DefaultNetworkInfo(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
