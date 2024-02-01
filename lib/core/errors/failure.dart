abstract class Failure {
  final Exception exception;

  Failure(this.exception);
}

class ServerFailure extends Failure {
  ServerFailure(super.exception);
}
