class AppException implements Exception {
  final String message;
  final String prefix;
  
  const AppException({required this.message, required this.prefix});
  
  @override
  String toString() => message;
}

class FetchDataException extends AppException {
  FetchDataException({required super.message}) 
      : super(prefix: "Error during Comms");
}

class BadRequestException extends AppException {
  BadRequestException({required super.message}) 
      : super(prefix: "Invalid Request");
}

class UnauthorizedException extends AppException {
  UnauthorizedException({required super.message}) 
      : super(prefix: "Unauthorized");
}

class PageNotFoundException extends AppException {
  PageNotFoundException({required super.message}) 
      : super(prefix: "Error 404");
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException({required super.message}) 
      : super(prefix: "Error 500");
}

class InvalidInputException extends AppException {
  InvalidInputException({required super.message})
      : super(prefix: "Invalid Input Exception");
}

class RequestTimeoutException extends AppException {
  RequestTimeoutException({required super.message})
      : super(prefix: "Request timedout");
}