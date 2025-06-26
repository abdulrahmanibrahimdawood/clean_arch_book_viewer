import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection time out with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send time out with api server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad certificate with api server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(message: ' Request canceled with api server');

      case DioExceptionType.connectionError:
        return ServerFailure(message: ' Bad connection with api server');

      case DioExceptionType.unknown:
        return ServerFailure(message: ' Unknown error with api server');
    }
  }
  factory ServerFailure.fromResponse(int statesCode, dynamic response) {
    if (statesCode == 404) {
      return ServerFailure(
          message: 'Your request was not found, please try later');
    } else if (statesCode == 500) {
      return ServerFailure(
          message: 'There is a problem with server, please try later');
    } else if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else {
      return ServerFailure(message: 'There is an error, please try again');
    }
  }
}
