import 'package:iti_adv_mobile_dev/core/network/error_model.dart';

class ServerExeption implements Exception {
  final ServerErrorModel errorModel;
  const ServerExeption(this.errorModel);
}

class LocalException implements Exception {
  final String msg;
  const LocalException(this.msg);
}
