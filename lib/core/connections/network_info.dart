import 'package:data_connection_checker_tv/data_connection_checker.dart';

//check that class return true or false
// return true that found Internet (get form api)
// return false that found No Internet (get from Cache)
abstract class NetworkInfo {
  Future<bool>? get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool>? get isConnected => connectionChecker.hasConnection;
}
