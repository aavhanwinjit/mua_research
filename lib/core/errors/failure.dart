abstract class Failure {
  final Exception exception;

  Failure(this.exception);
}

class ServerFailure extends Failure {
  ServerFailure(super.exception);
}

class StatusFailure extends Failure {
  StatusFailure(super.exception);
}
