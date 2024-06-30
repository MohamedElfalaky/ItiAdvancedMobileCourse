abstract class Failure {
  final String msg;
  Failure(this.msg);
}

class ServerFailure extends Failure {
  ServerFailure(super.msg);
}

class LocalFailure extends Failure {
  LocalFailure(super.msg);
}
