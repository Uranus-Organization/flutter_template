class ErrorResponse {
  final String message;

  const ErrorResponse(this.message);
}

class CodeErrorResponse extends ErrorResponse {
  final int code;

  const CodeErrorResponse(this.code, String message) : super(message);
}

class NoDataErrorResponse extends ErrorResponse {
  const NoDataErrorResponse() : super('No data!');
}

class NoConnectionErrorResponse extends ErrorResponse {
  const NoConnectionErrorResponse() : super('No connection!');
}

class UnknownErrorResponse extends ErrorResponse {
  const UnknownErrorResponse() : super('Unknown Failure!');
}